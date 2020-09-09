execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:8b}},limit=1,sort=nearest] at @s as @e[type=item,nbt={Item:{id:"minecraft:coal",Count:1b}},distance=..1,limit=1,sort=nearest] at @s as @e[type=item,nbt={Item:{id:"minecraft:oak_planks",Count:2b}},distance=..1,limit=1,sort=nearest] run function expansion:recipe_outputs/iron_core
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:8b}},limit=1,sort=nearest] at @s as @e[type=item,nbt={Item:{id:"minecraft:redstone_torch",Count:1b}},distance=..1,limit=1,sort=nearest] at @s as @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:2b}},distance=..1,limit=1,sort=nearest] run function expansion:recipe_outputs/gold_core
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:8b}},limit=1,sort=nearest] at @s as @e[type=item,nbt={Item:{id:"minecraft:redstone_lamp",Count:1b}},distance=..1,limit=1,sort=nearest] at @s as @e[type=item,nbt={Item:{id:"minecraft:quartz_block",Count:2b}},distance=..1,limit=1,sort=nearest] run function expansion:recipe_outputs/gold_core
execute as @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:8b}},limit=1,sort=nearest] at @s as @e[type=item,nbt={Item:{id:"minecraft:daylight_detector",Count:1b}},distance=..1,limit=1,sort=nearest] at @s as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:4b}},distance=..1,limit=1,sort=nearest] run function expansion:recipe_outputs/gold_core
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:8b}},limit=1,sort=nearest] at @s as @e[type=item,nbt={Item:{id:"minecraft:clock",Count:1b}},distance=..1,limit=1,sort=nearest] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_block",Count:2b}},distance=..1,limit=1,sort=nearest] run function expansion:recipe_outputs/gold_core
execute as @e[type=item,nbt={Item:{id:"minecraft:bow",Count:1b}},limit=1,sort=nearest] at @s as @e[type=item,nbt={Item:{id:"minecraft:redstone_torch",Count:1b}},distance=..1,limit=1,sort=nearest] at @s as @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:2b}},distance=..1,limit=1,sort=nearest] run function expansion:recipe_outputs/gold_core

schedule function expansion:core/gameplay/craft_detector 10t