-- EB05-040 / 내가 필요한 거지!!?♡
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-040",
    ["base_card_no"]="EB05-040",
    ["compile_status"]="AUTO",
    ["keywords"]={},
    ["effects"]={
      {
        ["effect_id"]="E1",
        ["timings"]={
          "MAIN",
        },
        ["actions"]={
          {
            ["op"]="DRAW",
            ["count"]=3,
            ["player"]="YOU",
          },
          {
            ["op"]="TRASH_HAND",
            ["count"]=1,
            ["player"]="YOU",
          },
        },
        ["conditions"]={
          {
            ["op"]="LEADER_HAS_TRAIT",
            ["player"]="YOU",
            ["trait"]="돈키호테 해적단",
          },
        },
        ["costs"]={
          {
            ["op"]="RETURN_DON",
            ["count"]=1,
            ["state"]="ACTIVE",
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【메인】자신의 액티브인 두웅!! 1장을 두웅!! 덱으로 되돌릴 수 있다: 자신의 리더가 《돈키호테 해적단》 특징을 가진 경우, 카드를 3장 드로우하고, 자신의 패를 1장 버린다.",
      },
      {
        ["effect_id"]="E2",
        ["timings"]={
          "COUNTER",
        },
        ["actions"]={
          {
            ["op"]="MODIFY_POWER",
            ["amount"]=2000,
            ["selector"]={
              ["kind"]="LEADER",
              ["owner"]="YOU",
              ["count"]=1,
              ["mode"]="EXACT",
            },
            ["duration"]="THIS_BATTLE",
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【카운터】자신의 리더를, 이번 배틀 동안, 파워 +2000.",
      },
    },
  })
end
