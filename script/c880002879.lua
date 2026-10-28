-- EB05-054 / 샬롯 브륄레
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-054",
    ["base_card_no"]="EB05-054",
    ["compile_status"]="AUTO",
    ["keywords"]={},
    ["effects"]={
      {
        ["effect_id"]="T1",
        ["timings"]={
          "LIFE_TRIGGER",
        },
        ["actions"]={
          {
            ["op"]="PLAY_FROM_HAND",
            ["count"]=2,
            ["mode"]="UP_TO",
            ["filter"]={
              ["card_type"]="CHARACTER",
              ["power_eq"]=4000,
              ["trait"]="빅 맘 해적단",
            },
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="【트리거】자신의 패에서 파워 4000인 《빅 맘 해적단》 특징을 가진 캐릭터 카드를 2장까지 등장시킨다.",
      },
    },
  })
end
