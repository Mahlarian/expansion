replaceitem entity @s hotbar.2 end_portal_frame{display:{Name:'{"text":"Use 0, 0","color":"yellow","bold":true,"italic":true}',Lore:['{"text":"Expansion will use 0,0 as the center","color":"white","italic":false}','{"text":"of the world border","color":"white","italic":false}']}} 1
kill @e[type=area_effect_cloud,tag=border_marker]
kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:end_portal_frame",Count:1b,tag:{display:{Name:'{"text":"Use 0, 0","color":"yellow","bold":true,"italic":true}',Lore:['{"text":"Expansion will use 0,0 as the center","color":"white","italic":false}','{"text":"of the world border","color":"white","italic":false}']}}}}]
scoreboard players set spawn_ref exp_data 2
playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1000 1