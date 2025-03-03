title @a[team=Seeker] subtitle {"text":"Kill all Hiders","color":"dark_blue"}
title @a title {"text":"Seeker is out","color":"dark_red"}
tp @a[team=Seeker] @e[type=marker,tag=seeker_spawn,limit=1]
execute if score Seeker_Tool settings_hide matches 1 run item replace entity @r[team=Seeker] hotbar.8 with minecraft:structure_void[fireworks={explosions:[{shape:small_ball}]},custom_name='["",{"text":"[Drop]","italic":false,"color":"dark_red"},{"text":" Expose Hider Location","italic":false}]',lore=['[""]','["",{"text":"----------------------------------","italic":false}]','["",{"text":"Temporarily gives glowing effect to","italic":false}]','["",{"text":"everyone. ","italic":false},{"text":"Only one Seeker have it","italic":false,"color":"dark_red"}]','["",{"text":"----------------------------------","italic":false}]','[""]','["",{"text":"Drop to Use","italic":false,"color":"dark_green"}]','["",{"text":"Cooldown 100s","italic":false,"color":"dark_aqua"}]','["",{"text":" ","italic":false,"color":"dark_aqua"}]','["",{"text":"Seeker Ablity","italic":false,"color":"dark_red"}]']]
execute if score Auto_End_Game settings_hide matches 1 run scoreboard players set AEG_Phase game_hide 1
scoreboard players set @a[team=Hider] afkfirework 300
scoreboard players set Game game_hide 1
scoreboard players set @a[team=Hider] Lives 0
effect give @a minecraft:saturation 10 130 true
