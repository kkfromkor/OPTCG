-- EB05-044 / 미스 파더스 데이
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-044",
    ["base_card_no"]="EB05-044",
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
            ["op"]="MODIFY_POWER",
            ["amount"]=-1000,
            ["selector"]={
              ["kind"]="LEADER",
              ["owner"]="OPPONENT",
              ["count"]=1,
              ["mode"]="EXACT",
            },
            ["duration"]="THIS_TURN",
          },
        },
        ["conditions"]={
          {
            ["op"]="LEADER_TRAIT_CONTAINS",
            ["player"]="YOU",
            ["trait"]="바로크 워크스",
          },
          {
            ["op"]="CHARACTER_EXISTS",
            ["player"]="OPPONENT",
            ["filter"]={
              ["cost_eq"]=0,
            },
          },
        },
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】자신의 리더가 『바로크 워크스』를 포함하는 특징을 가지고, 상대의 코스트 0인 캐릭터가 있는 경우, 상대의 리더를, 이번 턴 동안, 파워 -1000.",
      },
    },
  })
end
