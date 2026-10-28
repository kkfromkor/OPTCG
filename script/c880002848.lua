-- EB05-023 / 오소메
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-023",
    ["base_card_no"]="EB05-023",
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
            ["op"]="DRAW",
            ["count"]=3,
            ["player"]="YOU",
          },
        },
        ["conditions"]={},
        ["costs"]={
          {
            ["op"]="TRASH_HAND",
            ["count"]=2,
            ["player"]="YOU",
            ["filter"]={
              ["card_type"]="EVENT",
            },
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】자신의 패에서 이벤트 2장을 버릴 수 있다: 카드를 3장 드로우한다.",
      },
    },
  })
end
