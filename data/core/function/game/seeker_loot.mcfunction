clear @a[team=Seeker]
item replace entity @a[team=Seeker] armor.head with minecraft:leather_helmet[dyed_color={rgb:11546150,show_in_tooltip:false},hide_tooltip={},enchantments={levels:{binding_curse:1},show_in_tooltip:false},unbreakable={}]
item replace entity @a[team=Seeker] armor.chest with minecraft:leather_chestplate[dyed_color={rgb:11546150,show_in_tooltip:false},hide_tooltip={},enchantments={levels:{binding_curse:1,protection:5},show_in_tooltip:false},unbreakable={}]
item replace entity @p[team=Seeker] armor.feet with minecraft:diamond_boots[hide_tooltip={},enchantments={levels:{binding_curse:1,feather_falling:10,protection:5},show_in_tooltip:false},unbreakable={}]
item replace entity @a[team=Seeker] armor.legs with minecraft:leather_leggings[dyed_color={rgb:11546150,show_in_tooltip:false},hide_tooltip={},enchantments={levels:{binding_curse:1,protection:5},show_in_tooltip:false},unbreakable={}]
item replace entity @a[team=Seeker] container.0 with minecraft:diamond_sword
item replace entity @a[team=Seeker] container.1 with minecraft:cooked_beef 8
gamemode adventure @a[team=Seeker]
scoreboard players reset @a[team=Seeker] money
tag @a[team=Seeker] add player
effect give @a minecraft:saturation 10 130 true
effect clear @a[team=Seeker]

scoreboard players set @a[team=Seeker] Lives 3
tag @a[team=Seeker, scores={Lives=3}] add original_seeker