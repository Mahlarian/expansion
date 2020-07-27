function expansion:core/config_book/clear_hotbar

playsound minecraft:block.note_block.iron_xylophone master @a[scores={exp_config_op=3..}] ~ ~ ~ 1000 1
kill @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:1b,tag:{display:{Name:'{"text":"Change spawn behavior","color":"light_purple","bold":true,"italic":true}',Lore:['{"text":"Dropping this item allows you to modify","color":"white","italic":true}','{"text":"how the spawning conditions will work","color":"white","italic":true}','{"text":"when the game starts.","color":"white","italic":true}']}}}}]