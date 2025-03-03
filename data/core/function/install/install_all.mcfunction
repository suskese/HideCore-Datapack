function core:install/teams
function core:install/timer
function core:install/scoreboards
gamerule commandBlockOutput false
gamerule keepInventory true
gamerule doImmediateRespawn true
function core:install/setting_book
give @p oak_sign[block_entity_data={id:"sign",front_text:{messages:["[{\"text\":\"\"}]","{\"text\":\"Stats\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger stats set 1\"}}","{\"text\":\"[Click]\",\"color\":\"#D89B22\"}","[\"\"]"]}}]