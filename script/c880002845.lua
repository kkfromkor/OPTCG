-- EB05-020 / 시라호시라고 합니다!!
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-020",
    ["base_card_no"]="EB05-020",
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
            ["count"]=2,
            ["player"]="YOU",
          },
        },
        ["conditions"]={},
        ["costs"]={
          {
            ["op"]="REST_OWN_CARD",
            ["count"]=1,
            ["filter"]={
              ["card_type"]="LEADER",
              ["name"]="시라호시",
            },
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【메인】자신의 리더 「시라호시」를 레스트로 할 수 있다: 카드를 2장 드로우한다.",
      },
    },
  })
end
