-- EB05-021 / 알비다
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-021",
    ["base_card_no"]="EB05-021",
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
            ["count"]=2,
            ["player"]="YOU",
          },
          {
            ["op"]="PLAY_FROM_HAND",
            ["count"]=1,
            ["mode"]="UP_TO",
            ["filter"]={
              ["card_type"]="CHARACTER",
              ["cost_lte"]=8,
              ["trait"]="크로스 길드",
            },
          },
          {
            ["op"]="CANNOT_PLAY",
            ["player"]="YOU",
            ["filter"]={
              ["card_type"]="CHARACTER",
            },
            ["duration"]="THIS_TURN",
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】카드를 2장 드로우하고, 자신의 패에서 코스트 8 이하인 《크로스 길드》 특징을 가진 캐릭터 카드를 1장까지 등장시킨다. 그 후, 자신은 이번 턴 동안 캐릭터 카드를 등장시킬 수 없다.",
      },
      {
        ["effect_id"]="E2",
        ["timings"]={
          "WHEN_ATTACKING",
        },
        ["actions"]={
          {
            ["op"]="NEGATE_EFFECTS",
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
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【어택 시】상대의 캐릭터 1장까지를, 이번 턴 동안, 효과를 무효로 한다.",
      },
    },
  })
end
