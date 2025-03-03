execute as @p run scoreboard players set @p wr_system 0
execute as @p run scoreboard players operation @p wr_total = @p wr_lose
execute as @p run scoreboard players operation @p wr_total += @p wr_wins
execute as @p run scoreboard players operation @p wr_system = @p wr_wins
execute as @p run scoreboard players operation @p wr_system *= 100 math
execute as @p run scoreboard players operation @p wr_system /= @p wr_total