-- EB05-038 / 루시안
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-038",
    ["base_card_no"]="EB05-038",
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
            ["op"]="MODIFY_POWER",
            ["amount"]=3000,
            ["selector"]={
              ["kind"]="CHARACTER",
              ["owner"]="YOU",
              ["count"]=1,
              ["mode"]="UP_TO",
              ["filter"]={
                ["name"]="세뇨르 핑크",
              },
            },
            ["duration"]="THIS_TURN",
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】자신의 「세뇨르 핑크」 1장까지를, 이번 턴 동안, 파워 +3000.",
      },
    },
  })
end
