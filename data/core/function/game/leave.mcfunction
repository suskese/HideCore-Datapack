scoreboard players set @a[scores={left_game=1..},team=Hider] deaths 1
tellraw @p[scores={left_game=1..},team=Hider] "We are sorry, you left the game :("


tellraw @p[scores={left_game=1..},team=Seeker] "We are sorry, you left the game :("
execute if entity @a[scores={left_game=1..},team=Seeker] run function core:game/player_died
clear @a[scores={left_game=1..},team=Seeker]

execute as @a[scores={left_game=1..},tag=spectator,gamemode=spectator] run tp @p @e[tag=lobby,limit=1]
execute as @a[scores={left_game=1..},tag=spectator,gamemode=spectator] run gamemode adventure @p
execute as @a[scores={left_game=1..},tag=spectator] run tag @p remove spectator

execute if entity @a[tag=original_seeker,scores={left_game=1..}] if score Game game_hide matches 1 run schedule function core:game/end_of_game 20t
execute as @a[team=Seeker,scores={left_game=1..}] run trigger lobby
execute as @a[team=Hider,scores={left_game=1..}] run trigger lobby
team leave @a[scores={left_game=1..},team=Seeker]
scoreboard players set @a[scores={left_game=1..}] left_game 0
