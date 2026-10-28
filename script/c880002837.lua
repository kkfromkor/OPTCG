-- EB05-012 / 케이미
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-012",
    ["base_card_no"]="EB05-012",
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
                ["cost_lte"]=6,
              },
            },
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】상대의 코스트 6 이하인 캐릭터 1장까지를 레스트로 한다.",
      },
    },
  })
end
