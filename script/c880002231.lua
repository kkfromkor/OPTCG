-- OP14-066: vanilla character; numeric stats come from the card database.
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    base_card_no=[[OP14-066]],
    compile_status=[[MANUAL]],
    effects={},
    keywords={},
    rules_id=[[OP14-066]],
    schema_version=1,
  })
end
