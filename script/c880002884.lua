-- EB05-059 / “샬롯” “푸딩” 님이다!!
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-059",
    ["base_card_no"]="EB05-059",
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
            ["op"]="DRAW",
            ["count"]=1,
            ["player"]="YOU",
          },
          {
            ["op"]="CANNOT_BE_KO",
            ["selector"]={
              ["kind"]="CHARACTER",
              ["owner"]="YOU",
              ["count"]=1,
              ["mode"]="ALL",
              ["filter"]={
                ["base_power_eq"]=4000,
                ["trait"]="빅 맘 해적단",
              },
            },
            ["reason"]="BATTLE",
            ["duration"]="UNTIL_OPPONENT_NEXT_TURN_END",
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【메인】카드를 1장 드로우하고, 자신의 원래 파워 4000인 《빅 맘 해적단》 특징을 가진 모든 캐릭터는, 다음 상대의 엔드 페이즈 종료 시까지, 배틀로 KO되지 않는다.",
      },
      {
        ["effect_id"]="T1",
        ["timings"]={
          "LIFE_TRIGGER",
        },
        ["actions"]={
          {
            ["op"]="DRAW",
            ["count"]=1,
            ["player"]="YOU",
          },
          {
            ["op"]="PLAY_FROM_HAND",
            ["count"]=1,
            ["mode"]="UP_TO",
            ["filter"]={
              ["card_type"]="CHARACTER",
              ["power_eq"]=4000,
              ["has_trigger"]=true,
            },
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【트리거】카드를 1장 드로우하고, 자신의 패에서 파워 4000인 【트리거】를 가진 캐릭터 카드를 1장까지 등장시킨다.",
      },
    },
  })
end
