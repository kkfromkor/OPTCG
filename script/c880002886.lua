-- EB05-061 / 나미
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-061",
    ["base_card_no"]="EB05-061",
    ["compile_status"]="AUTO",
    ["keywords"]={},
    ["effects"]={
      {
        ["effect_id"]="E1",
        ["timings"]={
          "CONTINUOUS",
        },
        ["actions"]={
          {
            ["op"]="REPLACE_LEAVE_FIELD",
            ["selector"]={
              ["kind"]="CHARACTER",
              ["owner"]="YOU",
              ["count"]=1,
              ["mode"]="ALL",
              ["filter"]={
                ["base_power_lte"]=6000,
              },
            },
            ["reason"]="OPPONENT_ANY",
            ["optional"]=true,
            ["replacement_costs"]={
              {
                ["op"]="TAKE_LIFE_TO_HAND",
                ["count"]=1,
              },
            },
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=true,
        ["source_text"]="【턴 1회】자신의 원래 파워 6000 이하인 캐릭터가 상대에 의해 필드를 벗어날 경우, 대신 자신의 라이프 위에서 1장을 패에 더할 수 있다.",
      },
      {
        ["effect_id"]="E2",
        ["timings"]={
          "ON_PLAY",
        },
        ["actions"]={
          {
            ["op"]="PLAY_FROM_HAND",
            ["count"]=1,
            ["mode"]="UP_TO",
            ["filter"]={
              ["card_type"]="CHARACTER",
              ["cost_lte"]=2,
              ["color"]="RED",
            },
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】자신의 패에서 코스트 2 이하인 적색 캐릭터 카드를 1장까지 등장시킨다.",
      },
    },
  })
end
