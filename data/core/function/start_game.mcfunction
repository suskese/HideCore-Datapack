tag @a remove dead_hider
scoreboard players reset @a Lives
scoreboard players reset @a deaths
tag @a remove spectator
tag @a remove teleporting
tag @a remove original_seeker
function core:install/teams
scoreboard players set @a Kills 0
scoreboard players reset @a left_game

team join Hider @a[distance=..30]

function core:game/hider_loot
function core:game/seeker_select
function core:game/seeker_loot

title @a[team=Hider] subtitle {"text":"Good luck Hiders!","color":"dark_red"}
title @a[tag=player] title {"text":"Hiders are now hiding","color":"dark_blue"}

tp @a[team=Hider] @e[type=minecraft:marker,tag=hider_spawn,limit=1]
effect give @a minecraft:saturation 10 130 true
scoreboard players set @a money 0

bossbar set minecraft:timer visible true

execute if score Timer_Mode settings_hide matches 0 run scoreboard players set global timer 999999
execute if score Timer_Mode settings_hide matches 1 run scoreboard players set global timer 6000
execute if score Timer_Mode settings_hide matches 2 run scoreboard players set global timer 8400
execute if score Timer_Mode settings_hide matches 3 run scoreboard players set global timer 12000
execute if score Timer_Mode settings_hide matches 4 run scoreboard players set global timer 18000
execute if score Timer_Mode settings_hide matches 5 run scoreboard players set global timer 24000

bossbar set minecraft:timer players @a[tag=player]

execute if score Auto_End_Game settings_hide matches 0 run scoreboard players set AEG_Phase game_hide 0
execute if score Auto_End_Game settings_hide matches 1 run scoreboard players set AEG_Phase game_hide 1

tp @a[team=Seeker] @e[type=minecraft:marker,tag=seeker_lobby,limit=1]

say Seeker: @a[team=Seeker]

scoreboard players set preapeare game_hide 300
scoreboard players set Game game_hide -2
stopsound @a

tag @a remove dead_hider
