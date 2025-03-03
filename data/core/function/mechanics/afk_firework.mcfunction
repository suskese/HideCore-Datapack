execute if score Game game_hide matches 1 run tag @a[scores={afkfirework=..0}] add spawnfirework
execute if score Game game_hide matches 1 run execute as @a[team=Hider,tag=spawnfirework] at @s run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:30}
tag @a[tag=spawnfirework] remove spawnfirework

