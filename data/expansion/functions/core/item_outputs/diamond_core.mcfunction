# Difficulty Easy
execute if score difficulty exp_data matches 1 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"32","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 1 in overworld run worldborder add 32
execute if score difficulty exp_data matches 1 run scoreboard players add min exp_timer 12
execute if score difficulty exp_data matches 1 run scoreboard players add bar exp_timer 720
# Difficulty Medium
execute if score difficulty exp_data matches 2 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"26","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 2 in overworld run worldborder add 26
execute if score difficulty exp_data matches 2 run scoreboard players add min exp_timer 8
execute if score difficulty exp_data matches 2 run scoreboard players add bar exp_timer 480
# Difficulty Hard
execute if score difficulty exp_data matches 3 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"24","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 3 in overworld run worldborder add 24
# Difficulty Expert
execute if score difficulty exp_data matches 4 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"20","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 4 in overworld run worldborder add 20
# Difficulty Hardcore
execute if score difficulty exp_data matches 5 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"18","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 5 in overworld run worldborder add 18
execute if score difficulty exp_data matches 5 run scoreboard players remove min exp_timer 2
execute if score difficulty exp_data matches 5 run scoreboard players remove bar exp_timer 120
# handles pretty much everything else
playsound block.beacon.activate master @a ~ ~ ~ 1000 1
clear @a[scores={exp_coredetect=1..}] carrot_on_a_stick{CustomModelData:3} 1
execute store result score blocks blocks run worldborder get
