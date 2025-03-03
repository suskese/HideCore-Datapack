clear @p[team=Hider,scores={deaths=1..}]
item replace entity @a[team=Hider,scores={deaths=1..}] armor.head with minecraft:leather_helmet[trim={pattern:dune,material:redstone},dyed_color={rgb:16711680},enchantments={levels:{binding_curse:1,unbreaking:10},show_in_tooltip:false}]
item replace entity @a[team=Hider,scores={deaths=1..}] armor.chest with minecraft:leather_chestplate[trim={pattern:dune,material:redstone},dyed_color={rgb:16711680},enchantments={levels:{binding_curse:1,unbreaking:10},show_in_tooltip:false}]
item replace entity @a[team=Hider,scores={deaths=1..}] armor.feet with minecraft:diamond_boots[enchantments={levels:{binding_curse:1,feather_falling:10,protection:7,unbreaking:10},show_in_tooltip:false}] 1
item replace entity @a[team=Hider,scores={deaths=1..}] container.0 with minecraft:diamond_sword
item replace entity @a[team=Hider,scores={deaths=1..}] container.1 with minecraft:cooked_beef 8
gamemode adventure @a[team=Hider,scores={deaths=1..}]

tag @a[team=Hider,scores={deaths=1..}] add dead_hider
tag @a[team=Seeker, scores={deaths=1..}, tag=dead_hider] add spectator
team join Seeker @a[team=Hider,scores={deaths=1..},tag=dead_hider]

tag @a[team=Seeker,scores={deaths=1..},tag=dead_hider] add teleporting
tag @a[team=Seeker,tag=original_seeker,scores={deaths=1..}] add teleporting
function core:game/player_tp_to_map

scoreboard players set @a[tag=!original_seeker,scores={deaths=1..}] deaths 0