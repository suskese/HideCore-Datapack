title @a[team=Seeker,tag=!dead_hider] title {"text":"You Won!","color":"#F3C128"}
title @a[team=Hider] subtitle {"text":" Womp. Womp."}
title @a[team=Hider] title {"text":"You Lost!","color":"#520000"}
playsound minecraft:entity.ender_dragon.death master @a 0 0 0 200 0.5
scoreboard players add @a[tag=spectator] wr_lose 1
scoreboard players add @a[team=Seeker,tag=!dead_hider] wr_wins 1
scoreboard players add @a[team=Seeker,tag=!dead_hider] wr_seeker_wins 1
scoreboard players add @a[team=Hider] wr_lose 1