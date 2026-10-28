-- EB05-034 / 슈거
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-034",
    ["base_card_no"]="EB05-034",
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
            ["amount"]=-4000,
            ["selector"]={
              ["kind"]="CHARACTER",
              ["owner"]="OPPONENT",
              ["count"]=1,
              ["mode"]="UP_TO",
            },
            ["duration"]="THIS_TURN",
          },
        },
        ["conditions"]={
          {
            ["op"]="FIELD_DON_GTE",
            ["player"]="YOU",
            ["count"]=7,
          },
        },
        ["costs"]={
          {
            ["op"]="RETURN_DON",
            ["count"]=2,
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】두웅!! -2: 자신의 필드에 두웅!!이 7장 이상 있는 경우, 상대의 캐릭터 1장까지를, 이번 턴 동안, 파워 -4000.",
      },
    },
  })
end
