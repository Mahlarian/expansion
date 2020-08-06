execute at @e[type=item,nbt={Item:{id:"minecraft:coal",Count:1b}},distance=..1,limit=1,sort=nearest] run particle minecraft:end_rod ~ ~ ~ 1 0 1 0.5 100
execute at @e[type=item,nbt={Item:{id:"minecraft:coal",Count:1b}},distance=..1,limit=1,sort=nearest] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1000 0.8
execute at @e[type=item,nbt={Item:{id:"minecraft:coal",Count:1b}},distance=..1,limit=1,sort=nearest] if score difficulty exp_data matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Iron Core","color":"white"}',Lore:['{"text":"When right clicked, increases the","color":"white","italic":true}','[{"text":"border by ","color":"white","italic":true},{"text":"+8","color":"green","italic":true},{"text":" blocks","color":"white","italic":true}]']},CustomModelData:1}}}
execute at @e[type=item,nbt={Item:{id:"minecraft:coal",Count:1b}},distance=..1,limit=1,sort=nearest] if score difficulty exp_data matches 2 run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Iron Core","color":"white"}',Lore:['{"text":"When right clicked, increases the","color":"white","italic":true}','[{"text":"border by ","color":"white","italic":true},{"text":"+5","color":"green","italic":true},{"text":" blocks","color":"white","italic":true}]']},CustomModelData:1}}}
execute at @e[type=item,nbt={Item:{id:"minecraft:coal",Count:1b}},distance=..1,limit=1,sort=nearest] if score difficulty exp_data matches 3..5 run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Iron Core","color":"white"}',Lore:['{"text":"When right clicked, increases the","color":"white","italic":true}','[{"text":"border by ","color":"white","italic":true},{"text":"+4","color":"green","italic":true},{"text":" blocks","color":"white","italic":true}]']},CustomModelData:1}}}
execute at @e[type=item,nbt={Item:{id:"minecraft:coal",Count:1b}},distance=..1,limit=1,sort=nearest] unless score difficulty exp_data matches 1..5 run summon item ~ ~ ~ {Item:{id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Broken Item","color":"red","bold":true}',Lore:['{"text":"If you obtained this item through","color":"gray"}','{"text":"regular gameplay, then something went wrong.","color":"gray","italic":false}','{"text":"Source Error:","color":"red"}','{"text":"iron_core :  Difficulty score was","color":"yellow"}','{"text":"invalid at the time of item checking","color":"yellow"}']}}}}
kill @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:8b}},distance=..1,limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:oak_planks",Count:2b}},distance=..1,limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:coal",Count:1b}},distance=..1,limit=1,sort=nearest]