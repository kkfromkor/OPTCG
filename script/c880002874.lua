-- EB05-049 / 특급 홀로
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-049",
    ["base_card_no"]="EB05-049",
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
            ["op"]="MODIFY_COST",
            ["amount"]=-3,
            ["selector"]={
              ["kind"]="CHARACTER",
              ["owner"]="OPPONENT",
              ["count"]=1,
              ["mode"]="UP_TO",
            },
            ["duration"]="THIS_TURN",
          },
        },
        ["conditions"]={},
        ["costs"]={
          {
            ["op"]="KO_OWN_CARD",
            ["selector"]={
              ["kind"]="CHARACTER",
              ["owner"]="YOU",
              ["count"]=1,
              ["mode"]="EXACT",
              ["filter"]={
                ["trait"]="스릴러 바크 해적단",
              },
            },
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【메인】자신의 《스릴러 바크 해적단》 특징을 가진 캐릭터 1장을 KO할 수 있다: 상대의 캐릭터 1장까지를, 이번 턴 동안, 코스트 -3.",
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
            ["op"]="KO_OWN_CARD",
            ["selector"]={
              ["kind"]="CHARACTER",
              ["owner"]="YOU",
              ["count"]=1,
              ["mode"]="EXACT",
              ["filter"]={
                ["trait"]="스릴러 바크 해적단",
              },
            },
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【카운터】자신의 《스릴러 바크 해적단》 특징을 가진 캐릭터 1장을 KO할 수 있다: 자신의 리더나 캐릭터 1장까지를, 이번 배틀 동안, 파워 +4000.",
      },
    },
  })
end
