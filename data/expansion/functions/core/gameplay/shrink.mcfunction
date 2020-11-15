# Executed if on easy
execute if score difficulty exp_data matches 1 run worldborder add -5 1
execute if score difficulty exp_data matches 1 run scoreboard players set min exp_timer 30
execute if score difficulty exp_data matches 1 run scoreboard players set sec exp_timer 0
execute if score difficulty exp_data matches 1 run scoreboard players set bar exp_timer 1800
# Executed if on medium
execute if score difficulty exp_data matches 2 run worldborder add -8 1 
execute if score difficulty exp_data matches 2 run scoreboard players set min exp_timer 30
execute if score difficulty exp_data matches 2 run scoreboard players set sec exp_timer 0
execute if score difficulty exp_data matches 2 run scoreboard players set bar exp_timer 1800
# Executed if on hard
execute if score difficulty exp_data matches 3 run worldborder add -10 1
execute if score difficulty exp_data matches 3 run scoreboard players set min exp_timer 24
execute if score difficulty exp_data matches 3 run scoreboard players set sec exp_timer 0
execute if score difficulty exp_data matches 3 run scoreboard players set bar exp_timer 1440
# Executed if on expert/hardcore
execute if score difficulty exp_data matches 4..5 run worldborder add -10 1
execute if score difficulty exp_data matches 4..5 run scoreboard players set min exp_timer 20
execute if score difficulty exp_data matches 4..5 run scoreboard players set sec exp_timer 0
execute if score difficulty exp_data matches 4..5 run scoreboard players set bar exp_timer 1200
# Executed regardless of difficulty
execute if score blocks blocks matches ..4 run function expansion:core/gameplay/sequences/endgame
execute if score blocks blocks matches 4.. run playsound block.beacon.deactivate master @a ~ ~ ~ 1000 0.75
execute if score blocks blocks matches 4.. run bossbar set expansion:timer color green