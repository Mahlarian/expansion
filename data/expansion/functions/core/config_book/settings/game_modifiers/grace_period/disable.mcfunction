kill @e[type=item,nbt={Item:{id:"minecraft:red_concrete",Count:1b,tag:{display:{Name:'{"text":"Disable Grace Period","color":"red","bold":true,"italic":true}',Lore:['{"text":"Grace period will be deactivated","color":"white","italic":false}']}}}}]
replaceitem entity @s hotbar.1 red_concrete{display:{Name:'{"text":"Disable Grace Period","color":"red","bold":true,"italic":true}',Lore:['{"text":"Grace period will be deactivated","color":"white","italic":false}']}} 1
scoreboard players set grace_period exp_data 0
playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1000 1