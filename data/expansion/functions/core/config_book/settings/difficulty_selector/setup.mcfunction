replaceitem entity @a[scores={exp_config_op=1..}] hotbar.8 barrier{display:{Name:'{"text":"Return to Main Menu","color":"red","bold":true,"italic":true}',Lore:['{"text":"Dropping this item will return back to the config main menu","color":"white","italic":false}']}} 1
replaceitem entity @a[scores={exp_config_op=1..}] hotbar.2 lime_concrete{display:{Name:'{"text":"Easy","color":"green","bold":true,"italic":true}',Lore:['[{"text":"Shrink Timer: ","color":"gray","italic":true},{"text":"30 min","color":"light_purple"}]','[{"text":"Shrink Amount:","color":"gray","italic":true},{"text":" -5 blocks","color":"red"}]','[{"text":"Iron Core:","color":"white","italic":true},{"text":" +8 blocks","color":"green"}]','[{"text":"Gold Core:","color":"yellow","italic":true},{"text":" +18 blocks","color":"green"}]','[{"text":"Diamond Core: ","color":"aqua","italic":true},{"text":" +36 blocks","color":"green"}]','[{"text":"Emerald Core:","color":"dark_green","italic":true},{"text":" +42 blocks","color":"green"}]','[{"text":"Netherite Core:","color":"dark_red","italic":true},{"text":" +60 blocks","color":"green"}]']}} 1
kill @e[type=item,nbt={Item:{id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":"Difficulty","color":"red","bold":true,"italic":true}',Lore:['{"text":"Dropping this item will open the difficulty menu","color":"white"}']}}}}]