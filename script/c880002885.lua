-- EB05-060 / 「릴리스」를 부탁한다!!!
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-060",
    ["base_card_no"]="EB05-060",
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
            ["op"]="ADD_LIFE_FROM_DECK_TOP",
            ["count"]=1,
            ["mode"]="UP_TO",
            ["player"]="YOU",
          },
        },
        ["conditions"]={},
        ["costs"]={
          {
            ["op"]="TRASH_OWN_CARD",
            ["selector"]={
              ["kind"]="CHARACTER",
              ["owner"]="YOU",
              ["count"]=1,
              ["mode"]="EXACT",
              ["filter"]={
                ["cost_gte"]=5,
                ["trait"]="에그 헤드",
              },
            },
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【메인】자신의 코스트 5 이상인 《에그 헤드》 특징을 가진 캐릭터 1장을 트래시에 놓을 수 있다: 자신의 덱 위에서 1장까지를 라이프 위에 더한다.",
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
              ["kind"]="LEADER_OR_CHARACTER",
              ["owner"]="YOU",
              ["count"]=1,
              ["mode"]="UP_TO",
            },
            ["duration"]="THIS_BATTLE",
          },
        },
        ["conditions"]={},
        ["costs"]={
          {
            ["op"]="FLIP_LIFE_TOP",
            ["count"]=1,
            ["faceup"]=true,
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【카운터】자신의 라이프 위에서 1장을 앞면으로 할 수 있다: 자신의 리더나 캐릭터 1장까지를, 이번 배틀 동안, 파워 +4000.",
      },
    },
  })
end
