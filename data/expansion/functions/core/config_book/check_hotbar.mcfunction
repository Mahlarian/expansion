scoreboard players set @s exp_config_op -1
execute if entity @s[nbt={Inventory:[{Slot:0b}]}] unless entity @s[nbt={SelectedItemSlot:0}] run scoreboard players remove @s exp_config_op 1
execute if entity @s[nbt={Inventory:[{Slot:1b}]}] unless entity @s[nbt={SelectedItemSlot:1}] run scoreboard players remove @s exp_config_op 1
execute if entity @s[nbt={Inventory:[{Slot:2b}]}] unless entity @s[nbt={SelectedItemSlot:2}] run scoreboard players remove @s exp_config_op 1
execute if entity @s[nbt={Inventory:[{Slot:3b}]}] unless entity @s[nbt={SelectedItemSlot:3}] run scoreboard players remove @s exp_config_op 1
execute if entity @s[nbt={Inventory:[{Slot:4b}]}] unless entity @s[nbt={SelectedItemSlot:4}] run scoreboard players remove @s exp_config_op 1
execute if entity @s[nbt={Inventory:[{Slot:5b}]}] unless entity @s[nbt={SelectedItemSlot:5}] run scoreboard players remove @s exp_config_op 1
execute if entity @s[nbt={Inventory:[{Slot:6b}]}] unless entity @s[nbt={SelectedItemSlot:6}] run scoreboard players remove @s exp_config_op 1
execute if entity @s[nbt={Inventory:[{Slot:7b}]}] unless entity @s[nbt={SelectedItemSlot:7}] run scoreboard players remove @s exp_config_op 1
execute if entity @s[nbt={Inventory:[{Slot:8b}]}] unless entity @s[nbt={SelectedItemSlot:8}] run scoreboard players remove @s exp_config_op 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:written_book",tag:{gui_book:1}}}] run scoreboard players add @s exp_config_op 1
execute if entity @s[nbt={SelectedItem:{}}] run scoreboard players remove @s exp_config_op 1
execute if score @s exp_config_op matches -1 run tag @s add config_setup
scoreboard players reset @s exp_config_op
execute as @s[tag=config_setup] run function expansion:core/config_book/begin_setup
execute as @s[tag=!config_setup] run tellraw @s [{"text":"[Expansion] ","color":"aqua"},{"text":"Please clear your hotbar and try again","color":"red"}]
execute as @s[tag=config_setup] run tag @s remove config_setup