-- EB05-047 / 리플리
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-047",
    ["base_card_no"]="EB05-047",
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
            ["op"]="MODIFY_COST",
            ["amount"]=12,
            ["selector"]={
              ["kind"]="SELF",
              ["owner"]="YOU",
              ["count"]=1,
              ["mode"]="EXACT",
            },
            ["duration"]="THIS_TURN",
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="이 캐릭터의 코스트 +12.",
      },
      {
        ["effect_id"]="E2",
        ["timings"]={
          "ON_PLAY",
        },
        ["actions"]={
          {
            ["op"]="PLAY_FROM_TRASH",
            ["count"]=1,
            ["mode"]="UP_TO",
            ["filter"]={
              ["card_type"]="CHARACTER",
              ["cost_lte"]=2,
            },
          },
        },
        ["conditions"]={},
        ["costs"]={
          {
            ["op"]="TRASH_HAND",
            ["count"]=1,
            ["player"]="YOU",
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】자신의 패를 1장 버릴 수 있다: 자신의 트래시에서 코스트 2 이하인 캐릭터 카드를 1장까지 등장시킨다.",
      },
    },
  })
end
