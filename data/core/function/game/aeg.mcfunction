execute if score Seekers game_hide matches 0 run function core:visual/hiders_won
execute if score Hider game_hide matches 0 run function core:visual/seekers_won


execute if score Hider game_hide matches 0 run function core:game/end_of_game
execute if score Seekers game_hide matches 0 run function core:game/end_of_game

execute if score Hider game_hide matches 0 run scoreboard players set AEG_Phase game_hide 2
execute if score Seekers game_hide matches 0 run scoreboard players set AEG_Phase game_hide 2