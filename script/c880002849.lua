-- EB05-024 / 사디 양
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-024",
    ["base_card_no"]="EB05-024",
    ["compile_status"]="AUTO",
    ["keywords"]={},
    ["effects"]={
      {
        ["effect_id"]="E1",
        ["timings"]={
          "CONTINUOUS",
        },
        ["actions"]={
          {
            ["op"]="GAIN_KEYWORD",
            ["selector"]={
              ["kind"]="SELF",
              ["owner"]="YOU",
              ["count"]=1,
              ["mode"]="EXACT",
            },
            ["keyword"]="BLOCKER",
          },
          {
            ["op"]="MODIFY_COST",
            ["amount"]=2,
            ["selector"]={
              ["kind"]="SELF",
              ["owner"]="YOU",
              ["count"]=1,
              ["mode"]="EXACT",
            },
            ["duration"]="THIS_TURN",
          },
        },
        ["conditions"]={
          {
            ["op"]="LEADER_HAS_TRAIT",
            ["player"]="YOU",
            ["trait"]="임펠 다운",
          },
        },
        ["costs"]={},
        ["once_per_turn"]=false,
        ["source_text"]="자신의 리더가 《임펠 다운》 특징을 가진 경우, 이 캐릭터는 【블로커】를 얻고, 코스트 +2.",
      },
    },
  })
end
