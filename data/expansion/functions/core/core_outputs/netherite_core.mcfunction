# Difficulty Easy
execute if score difficulty exp_data matches 1 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"60","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 1 in overworld run worldborder add 60
execute if score difficulty exp_data matches 1 in the_nether run worldborder add 60
execute if score difficulty exp_data matches 1 in the_end run worldborder add 60
execute if score difficulty exp_data matches 1 run scoreboard players add min exp_timer 8
execute if score difficulty exp_data matches 1 run scoreboard players add bar exp_timer 480
# Difficulty Medium
execute if score difficulty exp_data matches 2 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"52","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 2 in overworld run worldborder add 52
execute if score difficulty exp_data matches 2 in the_nether run worldborder add 52
execute if score difficulty exp_data matches 2 in the_end run worldborder add 52
execute if score difficulty exp_data matches 2 run scoreboard players add min exp_timer 6
execute if score difficulty exp_data matches 2 run scoreboard players add bar exp_timer 360
# Difficulty Hard
execute if score difficulty exp_data matches 4 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"48","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 4 in overworld run worldborder add 48
execute if score difficulty exp_data matches 4 in the_nether run worldborder add 48
execute if score difficulty exp_data matches 4 in the_end run worldborder add 48
# Difficulty Expert/Hardcore
execute if score difficulty exp_data matches 4..5 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"36","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 4..5 in overworld run worldborder add 4
execute if score difficulty exp_data matches 4..5 in the_nether run worldborder add 4
execute if score difficulty exp_data matches 4..5 in the_end run worldborder add 4
execute if score difficulty exp_data matches 4..5 run scoreboard players remove min exp_timer 1
execute if score difficulty exp_data matches 4..5 run scoreboard players remove bar exp_timer 60
# handles pretty much everything else
playsound block.beacon.activate master @a ~ ~ ~ 1000 1
clear @a[scores={exp_coredetect=1..}] carrot_on_a_stick{CustomModelData:1} 1
execute store result score blocks blocks run worldborder get
