-- EB05-004 / 베이비 5
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-004",
    ["base_card_no"]="EB05-004",
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
        },
        ["conditions"]={},
        ["costs"]={
          {
            ["op"]="REVEAL_HAND",
            ["count"]=2,
            ["filter"]={
              ["card_type"]="EVENT",
            },
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】자신의 패에서 이벤트 2장을 공개할 수 있다: 카드를 2장 드로우한다.",
      },
      {
        ["effect_id"]="E2",
        ["timings"]={
          "ON_KO",
        },
        ["actions"]={
          {
            ["op"]="PLAY_FROM_HAND",
            ["count"]=1,
            ["mode"]="UP_TO",
            ["filter"]={
              ["card_type"]="CHARACTER",
              ["power_lte"]=6000,
            },
            ["rested"]=true,
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【KO 시】자신의 패에서 파워 6000 이하인 캐릭터 카드를 1장까지 레스트로 등장시킨다.",
      },
    },
  })
end
