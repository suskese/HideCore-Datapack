execute if score Game game_hide matches 0 run execute in minecraft:overworld run tp @a[scores={lobby=1..}] @e[type=marker,tag=lobby,limit=1]
execute if score Game game_hide matches 1 run tellraw @p "You cant use this right now!"
scoreboard players set @a[scores={lobby=1..}] lobby 0