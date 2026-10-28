-- EB05-045 / 미스 먼데이
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-045",
    ["base_card_no"]="EB05-045",
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
            ["op"]="KO",
            ["selector"]={
              ["kind"]="CHARACTER",
              ["owner"]="YOU",
              ["count"]=1,
              ["mode"]="UP_TO",
              ["filter"]={
                ["trait_contains"]="바로크 워크스",
              },
            },
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】자신의 『바로크 워크스』를 포함하는 특징을 가진 캐릭터 1장까지를 KO한다.",
      },
      {
        ["effect_id"]="E2",
        ["timings"]={
          "ON_KO",
        },
        ["actions"]={
          {
            ["op"]="SEARCH_DECK_TOP",
            ["look_count"]=3,
            ["select_count"]=1,
            ["select_mode"]="UP_TO",
            ["filter"]={
              ["trait_contains"]="바로크 워크스",
            },
            ["destination"]="HAND",
            ["rest_destination"]="TRASH",
            ["rest_order"]="CHOOSE",
            ["reveal"]=true,
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【KO 시】자신의 덱 위에서 3장을 보고, 『바로크 워크스』를 포함하는 특징을 가진 카드를 1장까지 공개하고 패에 더한다. 그 후, 남은 카드를 트래시에 놓는다.",
      },
    },
  })
end
