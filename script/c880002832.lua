-- EB05-007 / 모네
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-007",
    ["base_card_no"]="EB05-007",
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
            ["op"]="DRAW",
            ["count"]=1,
            ["player"]="YOU",
          },
        },
        ["conditions"]={},
        ["costs"]={
          {
            ["op"]="REVEAL_HAND",
            ["count"]=3,
            ["filter"]={
              ["any"]={
                {
                  ["card_type"]="EVENT",
                },
                {
                  ["trait"]="펑크 하자드",
                },
              },
            },
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】자신의 패에서 이벤트나 《펑크 하자드》 특징을 가진 카드를 합계 3장 공개할 수 있다: 카드를 1장 드로우한다.",
      },
      {
        ["effect_id"]="E2",
        ["timings"]={
          "YOUR_TURN_END",
        },
        ["actions"]={
          {
            ["op"]="MODIFY_POWER",
            ["amount"]=5000,
            ["selector"]={
              ["kind"]="SELF",
              ["owner"]="YOU",
              ["count"]=1,
              ["mode"]="EXACT",
            },
            ["duration"]="UNTIL_OPPONENT_NEXT_TURN_END",
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【자신의 턴 종료 시】이 캐릭터는 다음 상대의 엔드 페이즈 종료 시까지 파워 +5000.",
      },
    },
  })
end
