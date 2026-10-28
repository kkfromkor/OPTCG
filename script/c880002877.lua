-- EB05-052 / 글로리오사
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-052",
    ["base_card_no"]="EB05-052",
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
            ["op"]="REPLACE_DAMAGE",
            ["replacement_costs"]={
              {
                ["op"]="TRASH_SELF",
              },
            },
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="자신이 데미지를 받을 경우, 대신 이 캐릭터를 트래시에 놓을 수 있다.",
      },
      {
        ["effect_id"]="T1",
        ["timings"]={
          "LIFE_TRIGGER",
        },
        ["actions"]={
          {
            ["op"]="DRAW",
            ["count"]=2,
            ["player"]="YOU",
          },
          {
            ["op"]="TRASH_HAND",
            ["count"]=1,
            ["player"]="YOU",
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【트리거】카드를 2장 드로우하고, 자신의 패를 1장 버린다.",
      },
    },
  })
end
