# Difficulty Easy
execute if score difficulty exp_data matches 1 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"36","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 1 in overworld run worldborder add 36
execute if score difficulty exp_data matches 1 in the_nether run worldborder add 36
execute if score difficulty exp_data matches 1 in the_end run worldborder add 36
execute if score difficulty exp_data matches 1 run scoreboard players add min exp_timer 6
execute if score difficulty exp_data matches 1 run scoreboard players add bar exp_timer 360
# Difficulty Medium
execute if score difficulty exp_data matches 2 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"30","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 2 in overworld run worldborder add 5
execute if score difficulty exp_data matches 2 in the_nether run worldborder add 5
execute if score difficulty exp_data matches 2 in the_end run worldborder add 5
execute if score difficulty exp_data matches 2 run scoreboard players add min exp_timer 3
execute if score difficulty exp_data matches 2 run scoreboard players add bar exp_timer 180
# Difficulty Hard
execute if score difficulty exp_data matches 3 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"28","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 3 in overworld run worldborder add 4
execute if score difficulty exp_data matches 3 in the_nether run worldborder add 4
execute if score difficulty exp_data matches 3 in the_end run worldborder add 4
# Difficulty Hardcore
execute if score difficulty exp_data matches 4..5 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"24","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 4..5 in overworld run worldborder add 4
execute if score difficulty exp_data matches 4..5 in the_nether run worldborder add 4
execute if score difficulty exp_data matches 4..5 in the_end run worldborder add 4
execute if score difficulty exp_data matches 4..5 run scoreboard players remove min exp_timer 3
execute if score difficulty exp_data matches 4..5 run scoreboard players remove bar exp_timer 180
# handles pretty much everything else
playsound block.beacon.activate master @a ~ ~ ~ 1000 1
clear @a[scores={exp_coredetect=1..}] carrot_on_a_stick{CustomModelData:3} 1
execute store result score blocks blocks run worldborder get
