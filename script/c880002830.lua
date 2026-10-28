-- EB05-005 / 벨로 베티
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-005",
    ["base_card_no"]="EB05-005",
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
            ["amount"]=2000,
            ["selector"]={
              ["kind"]="CHARACTER",
              ["owner"]="YOU",
              ["count"]=3,
              ["mode"]="UP_TO",
              ["filter"]={
                ["trait"]="혁명군",
                ["has_trigger"]=true,
              },
            },
            ["duration"]="THIS_TURN",
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】자신의 《혁명군》 특징과 【트리거】를 모두 가진 캐릭터 3장까지를, 이번 턴 동안, 파워 +2000.",
      },
      {
        ["effect_id"]="E2",
        ["timings"]={
          "ACTIVATE_MAIN",
        },
        ["actions"]={
          {
            ["op"]="MODIFY_POWER",
            ["amount"]=-2000,
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
            ["op"]="TRASH_SELF",
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【기동: 메인】이 캐릭터를 트래시에 놓을 수 있다: 상대의 캐릭터 1장까지를, 이번 턴 동안, 파워 -2000.",
      },
    },
  })
end
