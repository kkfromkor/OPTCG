-- Run from the repository root: lua tests/op08_106_trigger.lua
-- Uses the production runtime, ACTIVATE_CARD_EFFECT dispatcher and Nami script.
-- Engine card selection/movement is mocked; this is not a live duel test.
LOCATION_MZONE, LOCATION_SZONE, LOCATION_HAND = 4, 8, 2
REASON_EFFECT = 64
local checks = 0
local function check(value, message)
    checks = checks + 1
    assert(value, message)
end
local hand, payable, negated, kos, draws, paid, emitted_blocked
local card = {
    field=false, field_id=1,
    IsLocation=function(self) return self.field end,
    GetFieldID=function(self) return self.field_id end,
    GetControler=function() return 0 end,
}
Duel = {
    GetTurnCount=function() return 1 end,
    GetFieldGroupCount=function() return hand end,
    Draw=function(_, count) draws=draws+count; hand=hand+count; return count end,
}
opcg = {
    ResolvePlayer=function(value, context)
        return value == 'OPPONENT' and 1-context.player or context.player
    end,
}
dofile('script/opcg_runtime.lua')
dofile('script/opcg_core.lua')
local runtime, core = opcg.runtime, OPCGCore
opcg.contract_ops = {timing_negated=function(_, timing) return negated and timing=='ON_PLAY' end}
runtime.bind({
    check_condition=function(_, condition, context)
        return core.CheckCondition(condition.op, condition, context)
    end,
    can_pay_cost=function(_, cost)
        check(cost.op=='TRASH_HAND' and cost.filter.has_trigger, 'Nami must pay a Trigger-card cost')
        return payable and hand > 0
    end,
    pay_cost=function() paid=paid+1; hand=hand-1 end,
    execute_action=function(_, action, context)
        if action.op=='KO' then
            check(action.selector.filter.cost_lte==5 and action.selector.mode=='UP_TO', 'Nami KO selector')
            kos=kos+1
            -- A new ordinary On Play effect must not inherit the bypass.
            local ok, reason=runtime.can_resolve(card, 'E1', {player=0,timing='ON_PLAY'})
            emitted_blocked=not ok and reason=='TRIGGER_SOURCE_LEFT_FIELD'
            return {}
        end
        return core.ExecuteAction(action.op, action, context)
    end,
})
local script={}
GetID=function() return script,880001082 end
opcg.RegisterCard=function(c,d) runtime.register_card(c,d) end
dofile('script/c880001082.lua')
script.initial_effect(card)
local function reset(n)
    hand=n; payable=true; negated=false; kos=0; draws=0; paid=0
    emitted_blocked=false; card.field=false; card.field_id=1
end
local function trigger()
    local ctx={player=0,timing='LIFE_TRIGGER'}
    local result=runtime.dispatch(card,'LIFE_TRIGGER',ctx)
    check(result[1].ok, 'Trigger runtime must complete')
    check(ctx.timing=='LIFE_TRIGGER' and ctx.effect.effect_id=='T1', 'Nested dispatch must preserve outer context')
    return ctx
end
reset(4)
trigger()
check(paid==1 and kos==1 and draws==1 and hand==4, '4 cards: pay, KO, then draw at 3')
check(emitted_blocked, 'Explicit invocation permission must not leak to emitted effects')
reset(5)
trigger()
check(paid==1 and kos==1 and draws==0 and hand==4, '5 cards: pay and KO, no draw at 4')
reset(4); payable=false
local ctx=trigger()
check(paid==0 and kos==0 and draws==0 and ctx.last_action_succeeded==false, 'Unpayable Trigger cost must fail without actions')
reset(4); negated=true
ctx=trigger()
check(paid==0 and kos==0 and draws==0 and ctx.last_action_succeeded==false, 'On Play negation must still block invoked effect')
reset(4)
local ordinary=runtime.dispatch(card,'ON_PLAY',{player=0})
check(not ordinary[1].ok and ordinary[1].result=='TRIGGER_SOURCE_LEFT_FIELD', 'Ordinary off-field On Play remains blocked')
card.field=true
local context={player=0,timing='ON_PLAY'}
runtime.capture_trigger_source(card,context); card.field_id=2
local ok, reason=runtime.can_resolve(card,'E1',context)
check(not ok and reason=='TRIGGER_SOURCE_LEFT_FIELD', 'Re-entered field instance remains blocked')
reset(4); card.field=true
ordinary=runtime.dispatch(card,'ON_PLAY',{player=0})
check(ordinary[1].ok and paid==1 and kos==1 and draws==1, 'Normal on-field On Play still works')
print('PASS '..checks..' checks (mock engine; production runtime and nested dispatcher)')
