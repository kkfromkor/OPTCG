-- EB05-010 / 니코 로빈
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-010",
    ["base_card_no"]="EB05-010",
    ["compile_status"]="AUTO",
    ["keywords"]={},
    ["effects"]={
      {
        ["effect_id"]="E1",
        ["timings"]={
          "ON_ANY_CHARACTER_KO",
        },
        ["actions"]={
          {
            ["op"]="ADD_LIFE_FROM_DECK_TOP",
            ["count"]=1,
            ["mode"]="UP_TO",
            ["player"]="YOU",
          },
        },
        ["conditions"]={
          {
            ["op"]="EVENT_TARGET_MATCHES",
            ["player"]="YOU",
            ["owner"]="YOU",
            ["filter"]={
              ["attribute"]="WISDOM",
              ["not_keyword"]="BLOCKER",
            },
          },
        },
        ["costs"]={},
        ["once_per_turn"]=true,
        ["source_text"]="【턴 1회】자신의 속성 (지)를 가지고 【블로커】를 가지지 않은 캐릭터가 KO되었을 때, 자신의 덱 위에서 1장까지를 라이프 위에 더한다.",
      },
      {
        ["effect_id"]="E2",
        ["timings"]={
          "ACTIVATE_MAIN",
        },
        ["actions"]={
          {
            ["op"]="SET_ACTIVE",
            ["selector"]={
              ["kind"]="CHARACTER",
              ["owner"]="YOU",
              ["count"]=1,
              ["mode"]="UP_TO",
              ["filter"]={
                ["power_lte"]=6000,
                ["attribute"]="WISDOM",
              },
            },
          },
        },
        ["conditions"]={},
        ["costs"]={},
        ["once_per_turn"]=true,
        ["source_text"]="【기동: 메인】【턴 1회】자신의 파워 6000 이하인 속성 (지)를 가진 캐릭터 1장까지를 액티브로 한다.",
      },
    },
  })
end
