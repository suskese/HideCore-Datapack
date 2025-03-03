scoreboard players operation global timer -= 1 math
execute store result bossbar timer value run scoreboard players get global timer
execute if score global timer > 600 math run bossbar set timer color green
execute if score global timer <= 600 math if score global timer > 200 math run bossbar set timer color yellow
execute if score global timer < 200 math run bossbar set timer color red
scoreboard players operation seconds timer = global timer
scoreboard players operation seconds timer /= 20 math
execute if score global timer > 0 math run bossbar set timer name {"text":"Timer - ","extra":[{"score":{"name":"seconds","objective":"timer"}},{"text":" seconds remaining"}]}
execute if score global timer < 0 math run bossbar set timer name "Time's up!"
execute if score global timer = 0 math run function core:visual/hiders_won