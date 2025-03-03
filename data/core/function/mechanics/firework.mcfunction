scoreboard players set @a[team=Hider,scores={UsedFireworks=1..}] FireworkRewardDelay 30
execute as @a[team=Hider,scores={UsedFireworks=1..}] run experience add @s[team=Hider,scores={UsedFireworks=1..}] 3 points
execute as @a[team=Hider,scores={UsedFireworks=1..}] run scoreboard players set @s UsedFireworks 0

scoreboard players remove @a[team=Hider,nbt=!{Inventory:[{id:"minecraft:firework_rocket"}]}] FireworkRewardDelay 1
execute as @a[scores={FireworkRewardDelay=..0}] run give @s[team=Hider, nbt=!{Inventory:[{id:"minecraft:firework_rocket"}]}] minecraft:firework_rocket[fireworks={explosions:[]},custom_name='["",{"text":"Firework Rocket (","italic":false,"color":"dark_green"},{"text":"3 points","italic":false,"color":"gold"},{"text":")","italic":false,"color":"dark_green"}]',lore=['["",{"text":"----------------------------------","italic":false}]','["",{"text":"Spawns a firework that will (If Enabled)","italic":false}]','["",{"text":"give you a temporarily glowing effect","italic":false}]','["",{"text":"and a ","italic":false},{"text":"3 expierence points","italic":false,"color":"gold"}]','["",{"text":"----------------------------------","italic":false}]','["",{"text":"(10 Xp Lvl (170 points) = 10 gold nuggets)","italic":false,"color":"gold"}]','[""]','["",{"text":"Cooldown 1.5s","italic":false,"color":"dark_aqua"}]','[""]','["",{"text":"Hider Ability","italic":false,"color":"green"}]'],can_place_on={predicates:[{blocks:"*"}],show_in_tooltip:false},hide_additional_tooltip={}]


execute if score Glow_Firework settings_hide matches 1 run execute at @a[team=Hider] if entity @e[type=minecraft:firework_rocket,distance=..5] run effect give @p minecraft:glowing 1 1 true
execute if score Minute_Firework settings_hide matches 1 run execute at @a[team=Hider] if entity @e[type=minecraft:firework_rocket,distance=..5] run scoreboard players set @p afkfirework 600

execute if score Minute_Firework settings_hide matches 1 run tag @a[scores={afkfirework=..0}] add spawnfirework
execute if score Minute_Firework settings_hide matches 1 run execute as @a[team=Hider,tag=spawnfirework] at @s run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:30}
tag @a[tag=spawnfirework] remove spawnfirework

execute if score Minute_Firework settings_hide matches 2 run execute if score Game game_hide matches 1 run scoreboard players remove @a[team=Hider] afkfirework 1

#hardcoded fireworks based on Win rate and time (20 ticks = 1 sec)

# execute if score Minute_Firework settings_hide matches 1 run execute if score global timer matches 600 run execute as @a[team=Hider,scores={wr_system=-4..5}] at @s if score global timer matches 600 run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:10}
# execute if score Minute_Firework settings_hide matches 1 run execute if score global timer matches 1000 run execute as @a[team=Hider,scores={wr_system=-4..5}] at @s if score global timer matches 1000 run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:10}
# execute if score Minute_Firework settings_hide matches 1 run execute if score global timer matches 2400 run execute as @a[team=Hider,scores={wr_system=-4..5}] at @s if score global timer matches 2400 run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:10}
# execute if score Minute_Firework settings_hide matches 1 run execute if score global timer matches 200 run execute as @a[team=Hider,scores={wr_system=6..}] at @s if score global timer matches 200 run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:30}
# execute if score Minute_Firework settings_hide matches 1 run execute if score global timer matches 400 run execute as @a[team=Hider,scores={wr_system=6..}] at @s if score global timer matches 400 run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:30}
# execute if score Minute_Firework settings_hide matches 1 run execute if score global timer matches 600 run execute as @a[team=Hider,scores={wr_system=6..}] at @s if score global timer matches 600 run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:30}
# execute if score Minute_Firework settings_hide matches 1 run execute if score global timer matches 800 run execute as @a[team=Hider,scores={wr_system=6..}] at @s if score global timer matches 800 run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:30}
# execute if score Minute_Firework settings_hide matches 1 run execute if score global timer matches 1000 run execute as @a[team=Hider,scores={wr_system=6..}] at @s if score global timer matches 1000 run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:30}
# execute if score Minute_Firework settings_hide matches 1 run execute if score global timer matches 1200 run execute as @a[team=Hider,scores={wr_system=6..}] at @s if score global timer matches 1200 run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:30}
# execute if score Minute_Firework settings_hide matches 1 run execute if score global timer matches 2400 run execute as @a[team=Hider,scores={wr_system=6..}] at @s if score global timer matches 2400 run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:30}
# execute if score Minute_Firework settings_hide matches 1 run execute if score global timer matches 3600 run execute as @a[team=Hider,scores={wr_system=6..}] at @s if score global timer matches 3600 run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:30}