-- EB05-018 / 레베카
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-018",
    ["base_card_no"]="EB05-018",
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
            ["op"]="CANNOT_SET_ACTIVE",
            ["selector"]={
              ["kind"]="CHARACTER",
              ["owner"]="OPPONENT",
              ["count"]=1,
              ["mode"]="UP_TO",
              ["filter"]={
                ["cost_lte"]=6,
                ["state"]="RESTED",
              },
            },
            ["duration"]="UNTIL_OPPONENT_NEXT_REFRESH",
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】상대의 레스트인 코스트 6 이하인 캐릭터 1장까지는, 다음 상대의 리프레시 페이즈에 액티브가 되지 않는다.",
      },
    },
  })
end
