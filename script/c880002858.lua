-- EB05-033 / 니코 로빈
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-033",
    ["base_card_no"]="EB05-033",
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
            ["count"]=3,
            ["player"]="YOU",
          },
          {
            ["op"]="TRASH_HAND",
            ["count"]=2,
            ["player"]="YOU",
          },
          {
            ["op"]="ADD_DON",
            ["count"]=4,
            ["mode"]="UP_TO",
            ["state"]="RESTED",
          },
        },
        ["conditions"]={
          {
            ["op"]="LEADER_HAS_TRAIT",
            ["player"]="YOU",
            ["trait"]="밀짚모자 일당",
          },
          {
            ["op"]="FIELD_DON_BEHIND_BY_GTE",
            ["player"]="YOU",
            ["count"]=6,
          },
        },
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】자신의 리더가 《밀짚모자 일당》 특징을 가지고, 자신의 필드의 두웅!! 수가 상대의 필드의 두웅!! 수보다 6장 이상 적은 경우, 카드를 3장 드로우하고, 자신의 패를 2장 버린다. 그 후, 두웅!! 덱에서 두웅!!을 4장까지 레스트로 추가한다.",
      },
    },
  })
end
