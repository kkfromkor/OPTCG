-- OP14-008: vanilla character; numeric stats come from the card database.
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    base_card_no=[[OP14-008]],
    compile_status=[[MANUAL]],
    effects={},
    keywords={},
    rules_id=[[OP14-008]],
    schema_version=1,
  })
end
