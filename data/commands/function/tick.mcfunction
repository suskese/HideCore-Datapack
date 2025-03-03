execute if entity @a[scores={self_kill=1..}] run function commands:self_kill
scoreboard players enable @a self_kill
execute if entity @a[scores={lobby=1..}] run function commands:lobby
scoreboard players enable @a lobby
execute if entity @a[scores={stats=1..}] run function commands:stats
scoreboard players enable @a stats