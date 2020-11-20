schedule function expansion:core/gameplay/grace_timer 1s
# main loop
execute unless score grace_m exp_timer matches 0 run bossbar set expansion:timer name [{"text":"Grace period ending in ","color":"white"},{"score":{"name":"grace_m","objective":"exp_timer"},"color":"aqua"},{"text":"m "},{"score":{"name":"grace_s","objective":"exp_timer"},"color":"aqua"},{"text":"s"}]
execute if score grace_m exp_timer matches 0 unless score grace_s exp_timer matches -1 run bossbar set expansion:timer name [{"text":"Grace period ending in ","color":"white"},{"score":{"name":"grace_m","objective":"exp_timer"},"color":"aqua"},{"text":"m "},{"score":{"name":"grace_s","objective":"exp_timer"},"color":"aqua"},{"text":"s"}]
execute store result bossbar expansion:timer value run scoreboard players get grace_bar exp_timer
scoreboard players remove grace_s exp_timer 1
scoreboard players remove grace_bar exp_timer 1
# executed when grace period ends
execute if score grace_s exp_timer matches -1 if score grace_m exp_timer matches 0 run tellraw @a [{"text":"[Expansion] ","color":"aqua"},{"text":"Grace period has ended!","color":"white"}]
execute if score grace_s exp_timer matches -1 if score grace_m exp_timer matches 0 run scoreboard players set hour exp_timer 0
execute if score grace_s exp_timer matches -1 if score grace_m exp_timer matches 0 if score difficulty exp_data matches 1..2 run scoreboard players set min exp_timer 30
execute if score grace_s exp_timer matches -1 if score grace_m exp_timer matches 0 if score difficulty exp_data matches 1..2 run scoreboard players set sec exp_timer 0
execute if score grace_s exp_timer matches -1 if score grace_m exp_timer matches 0 if score difficulty exp_data matches 1..2 run bossbar set expansion:timer max 1880
execute if score grace_s exp_timer matches -1 if score grace_m exp_timer matches 0 if score difficulty exp_data matches 3 run scoreboard players set min exp_timer 24
execute if score grace_s exp_timer matches -1 if score grace_m exp_timer matches 0 if score difficulty exp_data matches 3 run scoreboard players set sec exp_timer 0
execute if score grace_s exp_timer matches -1 if score grace_m exp_timer matches 0 if score difficulty exp_data matches 3 run bossbar set expansion:timer max 1440
execute if score grace_s exp_timer matches -1 if score grace_m exp_timer matches 0 if score difficulty exp_data matches 4..5 run scoreboard players set min exp_timer 20
execute if score grace_s exp_timer matches -1 if score grace_m exp_timer matches 0 if score difficulty exp_data matches 4..5 run scoreboard players set sec exp_timer 0
execute if score grace_s exp_timer matches -1 if score grace_m exp_timer matches 0 if score difficulty exp_data matches 1..2 run bossbar set expansion:timer max 1200
execute if score grace_s exp_timer matches -1 if score grace_m exp_timer matches 0 run playsound block.note_block.pling master @a ~ ~ ~ 1000 1
execute if score grace_s exp_timer matches -1 if score grace_m exp_timer matches 0 run bossbar set expansion:timer players 
execute if score grace_s exp_timer matches -1 if score grace_m exp_timer matches 0 run schedule clear expansion:core/gameplay/grace_timer
execute if score grace_s exp_timer matches -1 if score grace_m exp_timer matches 0 run function expansion:core/gameplay/timer
# takes off 1 minute when 60 seconds passes
execute if score grace_s exp_timer matches -1 unless score grace_m exp_timer matches 0 run scoreboard players remove grace_m exp_timer 1
execute if score grace_s exp_timer matches -1 unless score grace_m exp_timer matches 0 run scoreboard players set grace_s exp_timer 59
