title @a[team=Hider] title {"text":"You Won!","color":"#F3C128"}
title @a[team=Seeker] subtitle {"text":" Womp. Womp."}
title @a[team=Seeker] title {"text":"You Lost!","color":"#520000"}
playsound minecraft:event.raid.horn master @a 0 0 0 200 2
scoreboard players add @a[team=Hider] wr_wins 1
scoreboard players add @a[team=Hider] wr_hider_wins 1
scoreboard players add @a[team=Seeker] wr_lose 1
scoreboard players add @a[tag=spectator] wr_lose 1
tellraw @a [{"text":"Hiders Won! ","color":"yellow"}, {"selector":"@a[team=Hider]"}]