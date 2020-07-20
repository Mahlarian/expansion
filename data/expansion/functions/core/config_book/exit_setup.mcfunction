replaceitem entity @a[scores={exp_config_op=..3}] hotbar.0 air 1
replaceitem entity @a[scores={exp_config_op=..3}] hotbar.1 air 1
say Config off
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Exit Config","color":"red","bold":true}',Lore:['{"text":"Dropping this item will exit the config menu and return the config book back to you","color":"white","bold":false,"italic":false}']}}}}]
scoreboard players reset @a[scores={exp_config_op=..3}]