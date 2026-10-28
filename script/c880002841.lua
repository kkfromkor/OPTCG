-- EB05-016 / 니코 로빈
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-016",
    ["base_card_no"]="EB05-016",
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
            ["op"]="PLAY_FROM_HAND",
            ["count"]=1,
            ["mode"]="UP_TO",
            ["filter"]={
              ["card_type"]="CHARACTER",
              ["cost_lte"]=5,
              ["attribute"]="WISDOM",
            },
          },
        },
        ["conditions"]={
          {
            ["op"]="YOUR_TURN",
            ["player"]="YOU",
          },
        },
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【자신의 턴 중】【등장 시】자신의 패에서 코스트 5 이하인 속성 (지)를 가진 캐릭터 카드를 1장까지 등장시킨다.",
      },
      {
        ["effect_id"]="T1",
        ["timings"]={
          "LIFE_TRIGGER",
        },
        ["actions"]={
          {
            ["op"]="REST",
            ["selector"]={
              ["kind"]="CHARACTER",
              ["owner"]="OPPONENT",
              ["count"]=1,
              ["mode"]="UP_TO",
              ["filter"]={
                ["cost_lte"]=6,
              },
            },
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【트리거】상대의 코스트 6 이하인 캐릭터 1장까지를 레스트로 한다.",
      },
    },
  })
end
