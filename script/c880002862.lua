-- EB05-037 / 블랙마리아
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-037",
    ["base_card_no"]="EB05-037",
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
            ["look_count"]=3,
            ["select_count"]=1,
            ["select_mode"]="UP_TO",
            ["filter"]={
              ["trait"]="백수 해적단",
            },
            ["destination"]="HAND",
            ["rest_destination"]="DECK_BOTTOM",
            ["rest_order"]="CHOOSE",
            ["reveal"]=true,
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】자신의 덱 위에서 3장을 보고, 《백수 해적단》 특징을 가진 카드를 1장까지 공개하고 패에 더한다. 그 후, 남은 카드를 원하는 순서대로 덱 맨 아래에 놓는다.",
      },
    },
  })
end
