execute if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void"}}] run effect give @a[tag=player, nbt=!{active_effects: [ { id: "minecraft:glowing"} ] } ] minecraft:glowing 3 1

#Set a cooldown for seeker tool (20 = 1 sec)
execute if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void"}}] run scoreboard players set STTime game_hide 1901


execute if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void"}}] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void"}}]
execute if score STTime game_hide > min_0 game_hide run scoreboard players remove STTime game_hide 1
execute if score STTime game_hide matches 1 run item replace entity @r[team=Seeker] hotbar.8 with minecraft:structure_void[fireworks={explosions:[{shape:small_ball}]},custom_name='["",{"text":"[Drop]","italic":false,"color":"dark_red"},{"text":" Expose Hider Location","italic":false}]',lore=['[""]','["",{"text":"----------------------------------","italic":false}]','["",{"text":"Temporarily gives glowing effect to","italic":false}]','["",{"text":"everyone. ","italic":false},{"text":"Only one Seeker have it","italic":false,"color":"dark_red"}]','["",{"text":"----------------------------------","italic":false}]','[""]','["",{"text":"Drop to Use","italic":false,"color":"dark_green"}]','["",{"text":"Cooldown 100s","italic":false,"color":"dark_aqua"}]','["",{"text":" ","italic":false,"color":"dark_aqua"}]','["",{"text":"Seeker Ablity","italic":false,"color":"dark_red"}]']]
execute if score STTime game_hide matches 1 run scoreboard players set STTime game_hide 0