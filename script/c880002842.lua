-- EB05-017 / 머메이드 카페 댄서즈
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-017",
    ["base_card_no"]="EB05-017",
    ["compile_status"]="AUTO",
    ["keywords"]={},
    ["effects"]={
      {
        ["effect_id"]="E1",
        ["timings"]={
          "ON_OPPONENT_ATTACK",
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
              ["filter"]={
                ["trait_any"]={
                  "어인족",
                  "인어족",
                },
              },
            },
            ["duration"]="THIS_BATTLE",
          },
        },
        ["conditions"]={},
        ["costs"]={
          {
            ["op"]="REST_DON",
            ["count"]=1,
          },
          {
            ["op"]="TRASH_SELF",
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【상대의 어택 시】자신의 두웅!! 1장을 레스트로 하고, 이 캐릭터를 트래시에 놓을 수 있다: 자신의 《어인족》이나 《인어족》 특징을 가진 리더를, 이번 배틀 동안, 파워 +4000.",
      },
    },
  })
end
