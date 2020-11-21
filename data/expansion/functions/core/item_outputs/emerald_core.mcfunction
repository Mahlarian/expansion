# Difficulty Easy
execute if score difficulty exp_data matches 1 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"54","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 1 in overworld run worldborder add 54
execute if score difficulty exp_data matches 1 run scoreboard players add min exp_timer 20
execute if score difficulty exp_data matches 1 run scoreboard players add bar exp_timer 1200
# Difficulty Medium
execute if score difficulty exp_data matches 2 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"42","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 2 in overworld run worldborder add 42
execute if score difficulty exp_data matches 2 run scoreboard players add min exp_timer 12
execute if score difficulty exp_data matches 2 run scoreboard players add bar exp_timer 720
# Difficulty Hard
execute if score difficulty exp_data matches 3 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"36","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 3 in overworld run worldborder add 36
# Difficulty Expert
execute if score difficulty exp_data matches 4 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"32","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 4 in overworld run worldborder add 32
# Difficulty Hardcore
execute if score difficulty exp_data matches 5 run tellraw @a [{"selector":"@e[scores={exp_coredetect=1..},limit=1]","color":"aqua"},{"text":" has expanded the border by ","color":"white"},{"text":"30","color":"light_purple"},{"text":" blocks!","color":"white"}]
execute if score difficulty exp_data matches 5 in overworld run worldborder add 30
execute if score difficulty exp_data matches 5 run scoreboard players remove min exp_timer 8
execute if score difficulty exp_data matches 5 run scoreboard players remove bar exp_timer 480
# handles pretty much everything else
playsound block.beacon.activate master @a ~ ~ ~ 1000 1
clear @a[scores={exp_coredetect=1..}] carrot_on_a_stick{CustomModelData:4} 1
execute store result score blocks blocks run worldborder get
