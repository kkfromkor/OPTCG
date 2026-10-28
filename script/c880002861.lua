-- EB05-036 / 츠루
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-036",
    ["base_card_no"]="EB05-036",
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
            ["count"]=1,
            ["player"]="YOU",
          },
          {
            ["op"]="ADD_DON",
            ["count"]=1,
            ["mode"]="UP_TO",
            ["state"]="RESTED",
          },
        },
        ["conditions"]={
          {
            ["op"]="LEADER_HAS_TRAIT",
            ["player"]="YOU",
            ["trait"]="해군",
          },
        },
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】자신의 리더가 《해군》 특징을 가진 경우, 카드를 1장 드로우하고, 두웅!! 덱에서 두웅!!을 1장까지 레스트로 추가한다.",
      },
    },
  })
end
