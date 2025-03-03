#Settings
scoreboard objectives add game_hide dummy "Settings"
#Settings (Editable)
scoreboard objectives add settings_hide dummy "H&S Settings"

scoreboard objectives add left_game custom:leave_game "left_game"
scoreboard objectives add deaths deathCount
scoreboard objectives add afkfirework dummy
scoreboard objectives add money dummy
scoreboard objectives add Lives dummy
scoreboard objectives setdisplay list Lives
scoreboard players set min_0 game_hide 1
scoreboard players set max_5 game_hide 5


scoreboard players set Auto_End_Game settings_hide 0
scoreboard players set Timer_Mode settings_hide 0
scoreboard players set Glow_Firework settings_hide 0
scoreboard players set Hp_Count settings_hide 1
scoreboard players set Seeker_Tool settings_hide 0
scoreboard players set Minute_Firework settings_hide 0

scoreboard objectives add lobby trigger
scoreboard objectives add self_kill trigger
scoreboard objectives add stats trigger

scoreboard objectives add UsedFireworks minecraft.used:minecraft.firework_rocket
scoreboard objectives add FireworkRewardDelay dummy
scoreboard objectives add Kills playerKillCount
scoreboard objectives add math dummy
scoreboard players set 100 math 100

scoreboard objectives add wr_wins dummy
scoreboard objectives add wr_total dummy
scoreboard objectives add wr_lose dummy
scoreboard objectives add wr_system dummy
scoreboard objectives modify wr_system displayname { "bold": true, "text": "Winrate %","color": "gold"}
scoreboard objectives modify wr_system numberformat styled { "color": "#ffd028"}
scoreboard objectives modify wr_total displayname { "bold":true, "text":"Total Played", "color": "#0cb92e"}
scoreboard objectives modify wr_total numberformat styled { "color": "#59c56e"}
scoreboard objectives modify wr_lose displayname { "bold":true, "text":"Losses", "color": "#fc0b0b"}
scoreboard objectives modify wr_lose numberformat styled { "color": "#c90f0f"}
scoreboard objectives modify wr_wins displayname { "bold":true, "text":"Wins", "color": "#6ed507"}
scoreboard objectives modify wr_wins numberformat styled { "color": "#07d507"}

scoreboard objectives add wr_hider_wins dummy
scoreboard objectives add wr_seeker_wins dummy