-- EB05-031 / 빈스모크 레이주
-- Source: https://www.onepiece-cardgame.com/cardlist/?series=550205
local s,id=GetID()
function s.initial_effect(c)
  opcg.RegisterCard(c,{
    ["schema_version"]=1,
    ["rules_id"]="EB05-031",
    ["base_card_no"]="EB05-031",
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
            ["op"]="MILL_DECK",
            ["count"]=10,
          },
        },
        ["conditions"]={
          {
            ["op"]="LEADER_HAS_TRAIT",
            ["player"]="YOU",
            ["trait"]="빈스모크 가문",
          },
        },
        ["costs"]={
          {
            ["op"]="RETURN_DON",
            ["count"]=1,
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【등장 시】두웅!! -1: 자신의 리더가 《빈스모크 가문》 특징을 가진 경우, 자신의 덱 위에서 10장을 트래시에 놓는다.",
      },
      {
        ["effect_id"]="E2",
        ["timings"]={
          "ACTIVATE_MAIN",
        },
        ["actions"]={
          {
            ["op"]="ADD_DON",
            ["count"]=4,
            ["mode"]="UP_TO",
            ["state"]="ACTIVE",
          },
        },
        ["conditions"]={
          {
            ["op"]="CHARACTER_EXISTS",
            ["player"]="OPPONENT",
            ["filter"]={
              ["base_power_gte"]=8000,
            },
          },
        },
        ["costs"]={
          {
            ["op"]="TRASH_SELF",
          },
        },
        ["once_per_turn"]=false,
        ["source_text"]="【기동: 메인】이 캐릭터를 트래시에 놓을 수 있다: 상대의 원래 파워 8000 이상인 캐릭터가 있는 경우, 두웅!! 덱에서 두웅!!을 4장까지 액티브로 추가한다.",
      },
    },
  })
end
