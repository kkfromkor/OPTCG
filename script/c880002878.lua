-- EB05-053 / 샬롯 프랄리네
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-053",
    ["base_card_no"]="EB05-053",
    ["compile_status"]="AUTO",
    ["keywords"]={},
    ["effects"]={
      {
        ["effect_id"]="E1",
        ["timings"]={
          "WHEN_ATTACKING",
        },
        ["actions"]={
          {
            ["op"]="ADD_LIFE_FROM_HAND",
            ["count"]=1,
            ["mode"]="UP_TO",
            ["position"]="TOP",
          },
        },
        ["conditions"]={
          {
            ["op"]="HAND_GTE",
            ["player"]="OPPONENT",
            ["count"]=9,
          },
        },
        ["costs"]={},
        ["once_per_turn"]=true,
        ["source_text"]="【어택 시】【턴 1회】상대의 패가 9장 이상인 경우, 자신의 패를 1장까지 라이프 위에 더한다.",
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
        ["conditions"]={
          {
            ["op"]="LIFE_LTE",
            ["player"]="YOU",
            ["count"]=2,
          },
        },
        ["costs"]={
          {
            ["op"]="TRASH_HAND",
            ["count"]=1,
            ["player"]="YOU",
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【트리거】자신의 패를 1장 버릴 수 있다: 자신의 라이프가 2장 이하인 경우, 이 카드를 등장시킨다.",
      },
    },
  })
end
