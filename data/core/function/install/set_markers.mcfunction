give @p bat_spawn_egg[custom_name='[{"text":"Lobby","italic":false}]',entity_data={id:marker,Tags:[lobby]}] 1
give @p spider_spawn_egg[custom_name='[{"text":"Seeker Lobby","italic":false}]',entity_data={id:marker,Tags:[seeker_lobby]}] 1
give @p bee_spawn_egg[custom_name='[{"text":"Hider Spawn","italic":false}]',entity_data={id:marker,Tags:[hider_spawn]}] 1
give @p cave_spider_spawn_egg[custom_name='[{"text":"Seeker Spawn","italic":false}]',entity_data={id:marker,Tags:[seeker_spawn]}] 1

tellraw @p "After placing each marker you must use '/tp @e[tag=####] @p' while looking to the direction where you want to player look after teleportation. Tags: lobby seeker_lobby seeker_spawn hider_spawn"