-- EB05-035 / 스피드
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-035",
    ["base_card_no"]="EB05-035",
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
              ["trait"]="SMILE",
            },
            ["destination"]="HAND",
            ["rest_destination"]="DECK_BOTTOM",
            ["rest_order"]="CHOOSE",
            ["reveal"]=true,
          },
          {
            ["op"]="PLAY_FROM_HAND",
            ["count"]=2,
            ["mode"]="UP_TO",
            ["filter"]={
              ["card_type"]="CHARACTER",
              ["power_lte"]=5000,
              ["trait"]="SMILE",
            },
          },
        },
        ["conditions"]={},
        ["costs"]={
          {
            ["op"]="RETURN_DON",
            ["count"]=1,
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】두웅!! -1: 자신의 덱 위에서 5장을 보고, 《SMILE》 특징을 가진 카드를 2장까지 공개하고 패에 더한다. 그 후, 남은 카드를 원하는 순서대로 덱 맨 아래에 놓고, 자신의 패에서 파워 5000 이하인 《SMILE》 특징을 가진 캐릭터 카드를 2장까지 등장시킨다.",
      },
    },
  })
end
