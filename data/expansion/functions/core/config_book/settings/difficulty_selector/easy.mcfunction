replaceitem entity @s hotbar.2 lime_concrete{display:{Name:'{"text":"Easy","color":"green","bold":true,"italic":true}',Lore:['[{"text":"Shrink Timer: ","color":"gray","italic":true},{"text":"30 min","color":"light_purple"}]','[{"text":"Shrink Amount:","color":"gray","italic":true},{"text":" -5 blocks","color":"red"}]','[{"text":"Iron Core:","color":"white","italic":true},{"text":" +8 blocks","color":"green"}]','[{"text":"Gold Core:","color":"yellow","italic":true},{"text":" +18 blocks","color":"green"}]','[{"text":"Diamond Core: ","color":"aqua","italic":true},{"text":" +36 blocks","color":"green"}]','[{"text":"Emerald Core:","color":"dark_green","italic":true},{"text":" +42 blocks","color":"green"}]','[{"text":"Netherite Core:","color":"dark_red","italic":true},{"text":" +60 blocks","color":"green"}]']}} 1
playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1000 1
scoreboard players set difficulty exp_data 1
tellraw @a [{"text":"[Expansion] ","color":"aqua"},{"text":"Dificulty has been set to ","color":"white"},{"text":"EASY","color":"green"}]
kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:lime_concrete",Count:1b,tag:{display:{Name:'{"text":"Easy","color":"green","bold":true,"italic":true}',Lore:['[{"text":"Shrink Timer: ","color":"gray","italic":true},{"text":"30 min","color":"light_purple"}]','[{"text":"Shrink Amount:","color":"gray","italic":true},{"text":" -5 blocks","color":"red"}]','[{"text":"Iron Core:","color":"white","italic":true},{"text":" +8 blocks","color":"green"}]','[{"text":"Gold Core:","color":"yellow","italic":true},{"text":" +18 blocks","color":"green"}]','[{"text":"Diamond Core: ","color":"aqua","italic":true},{"text":" +36 blocks","color":"green"}]','[{"text":"Emerald Core:","color":"dark_green","italic":true},{"text":" +42 blocks","color":"green"}]','[{"text":"Netherite Core:","color":"dark_red","italic":true},{"text":" +60 blocks","color":"green"}]']}}}}]
