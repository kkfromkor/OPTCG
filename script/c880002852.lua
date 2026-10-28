-- EB05-027 / 히바리
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-027",
    ["base_card_no"]="EB05-027",
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
          {
            ["op"]="TRASH_HAND",
            ["count"]=2,
            ["player"]="YOU",
          },
          {
            ["op"]="RETURN_TO_DECK_BOTTOM",
            ["selector"]={
              ["kind"]="CHARACTER",
              ["owner"]="ANY",
              ["count"]=1,
              ["mode"]="UP_TO",
              ["filter"]={
                ["cost_lte"]=2,
              },
            },
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】카드를 3장 드로우하고, 자신의 패를 2장 버린다. 그 후, 코스트 2 이하인 캐릭터 1장까지를 주인의 덱 맨 아래에 놓는다.",
      },
    },
  })
end
