-- EB05-011 / 오토히메
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-011",
    ["base_card_no"]="EB05-011",
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
                ["cost_lte"]=5,
              },
            },
          },
        },
        ["conditions"]={
          {
            ["op"]="LEADER_NAME_IS",
            ["player"]="YOU",
            ["name"]="시라호시",
          },
        },
        ["costs"]={
          {
            ["op"]="FLIP_LIFE_TOP",
            ["count"]=1,
            ["faceup"]=false,
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】자신의 리더가 「시라호시」인 경우, 자신의 라이프 위에서 1장을 뒷면으로 할 수 있다: 상대의 코스트 5 이하인 캐릭터 1장까지를 레스트로 한다.",
      },
    },
  })
end
