gamemode spectator @a[tag=spectator,tag=teleporting]
team leave @a[tag=spectator,tag=teleporting]
tp @a[tag=spectator,tag=teleporting] @e[type=marker,tag=seeker_spawn,limit=1]
clear @a[tag=spectator,tag=teleporting]

scoreboard players remove @a[team=Seeker,tag=original_seeker,scores={deaths=1..}] Lives 1

execute if entity @a[team=Seeker,tag=original_seeker,scores={Lives=..0}] run function core:visual/hiders_won
execute if entity @a[team=Seeker,tag=original_seeker,scores={Lives=..0}] run function core:game/end_of_game
execute if entity @a[team=Seeker,tag=original_seeker,scores={Lives=1,deaths=1..}] run say 1 lives left for seeker
execute if entity @a[team=Seeker,tag=original_seeker,scores={Lives=2,deaths=1..}] run say 2 lives left for seeker

tp @a[tag=teleporting,scores={deaths=1..}] @e[type=marker,tag=seeker_spawn,limit=1]
scoreboard players set @a[team=Seeker,tag=original_seeker,scores={deaths=1..}] deaths 0
tag @a remove teleporting