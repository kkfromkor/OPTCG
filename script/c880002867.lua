-- EB05-042 / 시노부
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-042",
    ["base_card_no"]="EB05-042",
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
            ["op"]="TRASH_HAND",
            ["count"]=2,
            ["player"]="YOU",
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】카드를 2장 드로우하고, 자신의 패를 2장 버린다.",
      },
    },
  })
end
