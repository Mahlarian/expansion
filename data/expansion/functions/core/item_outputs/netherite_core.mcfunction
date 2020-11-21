# Difficulty Easy
execute if score difficulty exp_data matches 1 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"112","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 1 in overworld run worldborder add 112
execute if score difficulty exp_data matches 1 run scoreboard players add min exp_timer 50
execute if score difficulty exp_data matches 1 run scoreboard players add bar exp_timer 3000
# Difficulty Medium
execute if score difficulty exp_data matches 2 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"88","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 2 in overworld run worldborder add 88
execute if score difficulty exp_data matches 2 run scoreboard players add min exp_timer 25
execute if score difficulty exp_data matches 2 run scoreboard players add bar exp_timer 1500
# Difficulty Hard
execute if score difficulty exp_data matches 3 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"82","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 3 in overworld run worldborder add 82
# Difficulty Expert
execute if score difficulty exp_data matches 4 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"76","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 4 in overworld run worldborder add 76
# Difficulty Hardcore
execute if score difficulty exp_data matches 5 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"68","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 5 in overworld run worldborder add 68
# handles pretty much everything else
playsound block.beacon.activate master @a ~ ~ ~ 1000 1
clear @a[scores={exp_coredetect=1..}] carrot_on_a_stick{CustomModelData:5} 1
execute store result score blocks blocks run worldborder get
