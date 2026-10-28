-- EB05-002 / 돌
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-002",
    ["base_card_no"]="EB05-002",
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
            ["op"]="SEARCH_DECK_TOP",
            ["look_count"]=5,
            ["select_count"]=2,
            ["select_mode"]="UP_TO",
            ["filter"]={
              ["cost_gte"]=2,
              ["trait"]="해군",
            },
            ["destination"]="HAND",
            ["rest_destination"]="DECK_BOTTOM",
            ["rest_order"]="CHOOSE",
            ["reveal"]=true,
          },
          {
            ["op"]="TRASH_HAND",
            ["count"]=1,
            ["player"]="YOU",
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】자신의 덱 위에서 5장을 보고, 코스트 2 이상인 《해군》 특징을 가진 카드를 2장까지 공개하고 패에 더한다. 그 후, 남은 카드를 원하는 순서대로 덱 맨 아래에 놓고, 자신의 패를 1장 버린다.",
      },
    },
  })
end
