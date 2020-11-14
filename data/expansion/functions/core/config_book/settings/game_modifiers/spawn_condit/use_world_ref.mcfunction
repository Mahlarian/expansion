replaceitem entity @s hotbar.0 obsidian{display:{Name:'{"text":"Use World Spawn","color":"aqua","bold":true,"italic":true}',Lore:['{"text":"Expansion will use the world spawn","color":"white","italic":false}','{"text":"as the center of the border","color":"white","italic":false}']}} 1
kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:obsidian",Count:1b,tag:{display:{Name:'{"text":"Use World Spawn","color":"aqua","bold":true,"italic":true}',Lore:['{"text":"Expansion will use the world spawn","color":"white","italic":false}','{"text":"as the center of the border","color":"white","italic":false}']}}}}]
kill @e[type=area_effect_cloud,tag=border_marker]
scoreboard players set spawn_ref exp_data 1
playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1000 1