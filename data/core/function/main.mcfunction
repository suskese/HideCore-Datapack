execute as @e[type=minecraft:marker,tag=lobby] at @s if entity @p[distance=0..2,tag=player] if score Game game_hide matches 1 run tp @p @e[type=marker,tag=seeker_spawn,limit=1]
execute if score Game game_hide matches 0 run function core:game/leave_bypass

execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run execute at @e[type=marker] run particle block_marker{block_state:{Name:barrier}} ~ ~ ~ 0 0 0 0 1
execute if score Game game_hide matches 1 run execute if score Auto_End_Game settings_hide matches 1 run function core:game/aeg

scoreboard players set Total game_hide 0
execute as @a[tag=player] run scoreboard players add Total game_hide 1
scoreboard players set Seekers game_hide 0
execute as @a[team=Seeker] run scoreboard players add Seekers game_hide 1
scoreboard players set Hider game_hide 0
execute as @e[team=Hider] run scoreboard players add Hider game_hide 1
execute if score Game game_hide matches 1 run scoreboard players set @a[team=!Hider,team=!Seeker] left_game 0

execute if score global timer matches 0 run function core:visual/hiders_won
execute if score Game game_hide matches 1 run function core:game/timer
execute if score seconds timer matches 0 run function core:game/time_check
execute if score Game game_hide matches 1 run execute if entity @p[team=Seeker,scores={left_game=1..}] run function core:game/leave
execute if score Game game_hide matches 1 run execute if entity @p[team=Hider,scores={left_game=1..}] run function core:game/leave
execute if entity @p[team=!Hider,team=!Seeker] run scoreboard players set @p left_game 0

execute if score STTime game_hide matches -2 run scoreboard players set STTime game_hide 100


execute if score Game game_hide matches -2 run execute if score preapeare game_hide > min_0 game_hide run scoreboard players remove preapeare game_hide 1
execute if score Game game_hide matches -2 run execute if score preapeare game_hide > min_0 game_hide run execute if entity @a[team=!Hider,team=!Seeker,tag=player] run function core:game/end_of_game
execute if score Game game_hide matches -2 run execute if score preapeare game_hide = min_0 game_hide run function core:game/starting
execute if score Game game_hide matches -2 run execute if score preapeare game_hide = min_0 game_hide run scoreboard players set preapeare game_hide -1
execute if score Game game_hide matches -2 run execute if score preapeare game_hide matches 200 run title @a actionbar "10"
execute if score Game game_hide matches -2 run execute if score preapeare game_hide matches 100 run title @a actionbar "5"
execute if score Game game_hide matches -2 run execute if score preapeare game_hide matches 80 run title @a actionbar "4"
execute if score Game game_hide matches -2 run execute if score preapeare game_hide matches 60 run title @a actionbar "3"
execute if score Game game_hide matches -2 run execute if score preapeare game_hide matches 40 run title @a actionbar "2"
execute if score Game game_hide matches -2 run execute if score preapeare game_hide matches 20 run execute if score Total game_hide matches 1 run function core:game/end_of_game
execute if score Game game_hide matches -2 run execute if score preapeare game_hide matches 20 run title @a actionbar "1"



execute if entity @a[team=Hider,scores={deaths=1..}] run function core:game/player_died
execute if entity @a[team=!Hider,team=!Seeker,scores={deaths=1..}] run scoreboard players set @p deaths 0

execute if entity @a[team=Seeker,tag=dead_hider,scores={deaths=1..}] run function core:game/player_died
execute if entity @a[team=Seeker,scores={deaths=1..},tag=original_seeker] run function core:game/player_died

execute if score Game game_hide matches 1 run execute if score Seeker_Tool settings_hide matches 1 run function core:mechanics/seeker_tool
execute if score Game game_hide matches 1 run function core:mechanics/firework

#Sounds
execute if score global timer matches 20 run playsound minecraft:block.note_block.hat ambient @a 0 0 0 200
execute if score global timer matches 40 run playsound minecraft:block.note_block.hat ambient @a 0 0 0 200
execute if score global timer matches 60 run playsound minecraft:block.note_block.hat ambient @a 0 0 0 200
execute if score global timer matches 80 run playsound minecraft:block.note_block.hat ambient @a 0 0 0 200
execute if score global timer matches 100 run playsound minecraft:block.note_block.hat ambient @a 0 0 0 200
execute if score global timer matches 120 run playsound minecraft:block.note_block.hat ambient @a 0 0 0 200
execute if score global timer matches 140 run playsound minecraft:block.note_block.hat ambient @a 0 0 0 200
execute if score global timer matches 160 run playsound minecraft:block.note_block.hat ambient @a 0 0 0 200
execute if score global timer matches 180 run playsound minecraft:block.note_block.hat ambient @a 0 0 0 200
execute if score global timer matches 200 run playsound minecraft:block.note_block.hat ambient @a 0 0 0 200
#Special
execute if score Minute_Firework settings_hide matches 2 run execute at @a[team=Hider] if entity @e[type=minecraft:firework_rocket,distance=..5] run scoreboard players set @p afkfirework 600
execute if score Minute_Firework settings_hide matches 2 run function core:mechanics/afk_firework
execute if score Minute_Firework settings_hide matches 2 run execute if score Game game_hide matches 1 run scoreboard players remove @a[team=Hider] afkfirework 1


execute as @a[tag=player,scores={Kills=1..}] run experience add @s[tag=player,scores={Kills=1..}] 10 levels
execute as @a[tag=player,scores={Kills=1..}] run scoreboard players set @s Kills 0