replaceitem entity @s hotbar.0 lime_concrete{display:{Name:'{"text":"Enable Grace Period","color":"green","bold":true,"italic":true}',Lore:['{"text":"Grace period will be active","color":"white","italic":false}']}} 1
kill @e[type=item,nbt={Item:{id:"minecraft:lime_concrete",Count:1b,tag:{display:{Name:'{"text":"Enable Grace Period","color":"green","bold":true,"italic":true}',Lore:['{"text":"Grace period will be active","color":"white","italic":false}']}}}}]
scoreboard players set grace_period exp_data 1
playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1000 1