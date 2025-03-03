
scoreboard players add @a[team=Seeker,tag=player,scores={left_game=1..}] wr_lose 1
scoreboard players add @a[team=Hider,tag=player,scores={left_game=1..}] wr_lose 1

execute as @a[team=Hider,tag=player,scores={left_game=1..}] run trigger lobby
execute as @a[team=Seeker,tag=player,scores={left_game=1..}] run trigger lobby
execute as @a[scores={left_game=1..},tag=spectator,gamemode=spectator] run gamemode adventure @p
clear @a[team=Hider,tag=player,scores={left_game=1..}]
clear @a[team=Seeker,tag=player,scores={left_game=1..}]
tag @a[team=Hider,tag=player,scores={left_game=1..}] remove original_seeker
tag @a[team=Seeker,tag=player,scores={left_game=1..}] remove original_seeker
team leave @a[team=Hider,tag=player,scores={left_game=1..}]
team leave @a[team=Seeker,tag=player,scores={left_game=1..}]
tag @a[tag=player,scores={left_game=1..}] remove player
tag @a[tag=player,scores={left_game=1..}] remove player
scoreboard players set @a[scores={left_game=1..}] left_game 0