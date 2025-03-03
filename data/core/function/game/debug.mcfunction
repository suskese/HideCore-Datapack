scoreboard players set Game game_hide 0
scoreboard players set AEG_Phase game_hide 0
tp @a[tag=player] @e[type=minecraft:marker,tag=lobby,limit=1]
clear @a[tag=player]
team leave @a[tag=player]
gamemode adventure @a[tag=player]
tag @a remove player
tag @a remove deaths
tag @a remove spectator
execute at @e[type=minecraft:marker,tag=lobby] run spawnpoint @a
effect clear @a
effect give @a saturation 3 255
# kill @e[type=item] #Enable if you will use H&S world only
scoreboard players set preapeare game_hide -1

tag @a remove teleporting