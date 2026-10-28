-- EB05-022 / 옥토파코
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-022",
    ["base_card_no"]="EB05-022",
    ["compile_status"]="AUTO",
    ["keywords"]={},
    ["effects"]={
      {
        ["effect_id"]="E1",
        ["timings"]={
          "ON_KO",
        },
        ["actions"]={
          {
            ["op"]="DRAW",
            ["count"]=2,
            ["player"]="YOU",
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【KO 시】카드를 2장 드로우한다.",
      },
    },
  })
end
