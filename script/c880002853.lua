-- EB05-028 / 보아 행콕
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-028",
    ["base_card_no"]="EB05-028",
    ["compile_status"]="AUTO",
    ["keywords"]={},
    ["effects"]={
      {
        ["effect_id"]="E1",
        ["timings"]={
          "ON_PLAY",
        },
        ["actions"]={
          {
            ["op"]="TRASH_HAND",
            ["player"]="OPPONENT",
            ["count"]=4,
          },
        },
        ["conditions"]={
          {
            ["op"]="HAND_GTE",
            ["player"]="OPPONENT",
            ["count"]=9,
          },
        },
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】상대의 패가 9장 이상인 경우, 상대는 자신의 패를 4장 버린다.",
      },
    },
  })
end
