-- EB05-039 / 도색 독화살
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-039",
    ["base_card_no"]="EB05-039",
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
            ["amount"]=-4000,
            ["selector"]={
              ["kind"]="CHARACTER",
              ["owner"]="OPPONENT",
              ["count"]=1,
              ["mode"]="UP_TO",
            },
            ["duration"]="THIS_TURN",
          },
        },
        ["conditions"]={
          {
            ["op"]="LEADER_HAS_TRAIT",
            ["player"]="YOU",
            ["trait"]="빈스모크 가문",
          },
        },
        ["costs"]={
          {
            ["op"]="RETURN_DON",
            ["count"]=1,
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【메인】두웅!! -1: 자신의 리더가 《빈스모크 가문》 특징을 가진 경우, 상대의 캐릭터 1장까지를, 이번 턴 동안, 파워 -4000.",
      },
      {
        ["effect_id"]="E2",
        ["timings"]={
          "COUNTER",
        },
        ["actions"]={
          {
            ["op"]="MODIFY_POWER",
            ["amount"]=4000,
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
        ["costs"]={
          {
            ["op"]="RETURN_DON",
            ["count"]=1,
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【카운터】두웅!! -1: 자신의 리더를, 이번 배틀 동안, 파워 +4000.",
      },
    },
  })
end
