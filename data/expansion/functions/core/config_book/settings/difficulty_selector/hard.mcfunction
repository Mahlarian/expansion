playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1000 1
tellraw @a [{"text":"[Expansion] ","color":"aqua"},{"text":"Dificulty has been set to ","color":"white"},{"text":"HARD","color":"red"}]
scoreboard players set difficulty exp_data 3
replaceitem entity @a[scores={exp_config_op=1..}] hotbar.4 red_concrete{display:{Name:'{"text":"Hard","color":"red","bold":true,"italic":true}',Lore:['[{"text":"Shrink Timer: ","color":"gray","italic":true},{"text":"24 min","color":"light_purple"}]','[{"text":"Shrink Amount:","color":"gray","italic":true},{"text":" -10 blocks","color":"red"}]','[{"text":"Iron Core:","color":"white","italic":true},{"text":" +4 blocks","color":"green"}]','[{"text":"Gold Core:","color":"yellow","italic":true},{"text":" +12 blocks","color":"green"}]','[{"text":"Diamond Core: ","color":"aqua","italic":true},{"text":" +28 blocks","color":"green"}]','[{"text":"Emerald Core:","color":"dark_green","italic":true},{"text":" +32 blocks","color":"green"}]','[{"text":"Netherite Core:","color":"dark_red","italic":true},{"text":" +48 blocks","color":"green"}]']}} 1
kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:red_concrete",Count:1b,tag:{display:{Name:'{"text":"Hard","color":"red","bold":true,"italic":true}',Lore:['[{"text":"Shrink Timer: ","color":"gray","italic":true},{"text":"24 min","color":"light_purple"}]','[{"text":"Shrink Amount:","color":"gray","italic":true},{"text":" -10 blocks","color":"red"}]','[{"text":"Iron Core:","color":"white","italic":true},{"text":" +4 blocks","color":"green"}]','[{"text":"Gold Core:","color":"yellow","italic":true},{"text":" +12 blocks","color":"green"}]','[{"text":"Diamond Core: ","color":"aqua","italic":true},{"text":" +28 blocks","color":"green"}]','[{"text":"Emerald Core:","color":"dark_green","italic":true},{"text":" +32 blocks","color":"green"}]','[{"text":"Netherite Core:","color":"dark_red","italic":true},{"text":" +48 blocks","color":"green"}]']}}}}]