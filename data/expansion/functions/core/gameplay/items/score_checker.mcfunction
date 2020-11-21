schedule function expansion:core/gameplay/items/score_checker 1t

execute as @a[scores={exp_coredetect=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run function expansion:core/item_outputs/iron_core
execute as @a[scores={exp_coredetect=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2}}}] run function expansion:core/item_outputs/gold_core
execute as @a[scores={exp_coredetect=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3}}}] run function expansion:core/item_outputs/diamond_core
execute as @a[scores={exp_coredetect=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:4}}}] run function expansion:core/item_outputs/emerald_core
execute as @a[scores={exp_coredetect=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:5}}}] run function expansion:core/item_outputs/netherite_core
execute as @a[scores={exp_coredetect=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:8}}}] run function expansion:core/gameplay/tester_items/hunger_controller
scoreboard players reset @a[scores={exp_coredetect=1..}] exp_coredetect