clear @a[team=Hider]
item replace entity @a[team=Hider] armor.head with minecraft:leather_helmet[trim={pattern:sentry,material:diamond,show_in_tooltip:false},dyed_color={rgb:3847130,show_in_tooltip:false},hide_tooltip={},enchantments={levels:{binding_curse:1},show_in_tooltip:false},unbreakable={}]
item replace entity @a[team=Hider] armor.chest with minecraft:leather_chestplate[dyed_color={rgb:3847130,show_in_tooltip:false},hide_tooltip={},enchantments={levels:{binding_curse:1},show_in_tooltip:false},unbreakable={}]
item replace entity @a[team=Hider] armor.feet with minecraft:iron_boots[hide_tooltip={},enchantments={levels:{binding_curse:1,feather_falling:10},show_in_tooltip:false},unbreakable={}]
item replace entity @a[team=Hider] armor.legs with minecraft:golden_leggings[hide_tooltip={},enchantments={levels:{binding_curse:1},show_in_tooltip:false},unbreakable={}]
item replace entity @a[team=Hider] container.1 with minecraft:apple 10
gamemode adventure @a[team=Hider]
tag @a[team=Hider] add player
effect give @a minecraft:saturation 10 130 true