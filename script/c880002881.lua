-- EB05-056 / 니코 올비아
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-056",
    ["base_card_no"]="EB05-056",
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
        },
        ["conditions"]={
          {
            ["op"]="LEADER_NAME_IS",
            ["player"]="YOU",
            ["name"]="니코 로빈",
          },
        },
        ["costs"]={
          {
            ["op"]="TRASH_HAND",
            ["count"]=1,
            ["player"]="YOU",
            ["filter"]={
              ["has_trigger"]=true,
            },
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】자신의 패에서 【트리거】를 가진 카드 1장을 버릴 수 있다: 자신의 리더가 「니코 로빈」인 경우, 카드를 2장 드로우한다.",
      },
      {
        ["effect_id"]="T1",
        ["timings"]={
          "LIFE_TRIGGER",
        },
        ["actions"]={
          {
            ["op"]="PLAY_SELF",
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【트리거】이 카드를 등장시킨다.",
      },
    },
  })
end
