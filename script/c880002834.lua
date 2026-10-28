-- EB05-009 / 나랑 같이 죽어줘!!!
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-009",
    ["base_card_no"]="EB05-009",
    ["compile_status"]="AUTO",
    ["keywords"]={},
    ["effects"]={
      {
        ["effect_id"]="E1",
        ["timings"]={
          "MAIN",
        },
        ["actions"]={
          {
            ["op"]="MODIFY_POWER",
            ["amount"]=1000,
            ["selector"]={
              ["kind"]="CHARACTER",
              ["owner"]="YOU",
              ["count"]=1,
              ["mode"]="ALL",
              ["filter"]={
                ["base_power_lte"]=4000,
              },
            },
            ["duration"]="UNTIL_OPPONENT_NEXT_TURN_END",
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【메인】자신의 원래 파워 4000 이하인 모든 캐릭터를, 다음 상대의 엔드 페이즈 종료 시까지, 파워 +1000.",
      },
      {
        ["effect_id"]="E2",
        ["timings"]={
          "COUNTER",
        },
        ["actions"]={
          {
            ["op"]="MODIFY_POWER",
            ["amount"]=3000,
            ["selector"]={
              ["kind"]="LEADER",
              ["owner"]="YOU",
              ["count"]=1,
              ["mode"]="EXACT",
            },
            ["duration"]="THIS_BATTLE",
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【카운터】자신의 리더를, 이번 배틀 동안, 파워 +3000.",
      },
    },
  })
end
