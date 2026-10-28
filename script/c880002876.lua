-- EB05-051 / 아히루
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-051",
    ["base_card_no"]="EB05-051",
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
            ["op"]="REST",
            ["selector"]={
              ["kind"]="CHARACTER",
              ["owner"]="OPPONENT",
              ["count"]=1,
              ["mode"]="UP_TO",
              ["filter"]={
                ["cost_lte_life_total"]=true,
              },
            },
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】서로의 라이프 합계 수 이하의 코스트를 가진 상대의 캐릭터 1장까지를 레스트로 한다.",
      },
      {
        ["effect_id"]="T1",
        ["timings"]={
          "LIFE_TRIGGER",
        },
        ["actions"]={
          {
            ["op"]="PLAY_SELF",
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【트리거】이 카드를 등장시킨다.",
      },
    },
  })
end
