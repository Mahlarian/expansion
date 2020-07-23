execute at @a[scores={exp_config_op=2..},limit=1] if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Exit Config","color":"red","bold":true}',Lore:['{"text":"Dropping this item will exit the config menu and return the config book back to you","color":"white","bold":false,"italic":false}']}}}}] run function expansion:core/config_book/exit_setup
execute at @a[scores={exp_config_op=2..},limit=1] if entity @e[type=item,nbt={Item:{id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":"Difficulty","color":"red","bold":true,"italic":true}',Lore:['{"text":"Dropping this item will open the difficulty menu","color":"white"}']}}}}] run function expansion:core/config_book/settings/difficulty_selector/setup
#submenu
execute at @a[scores={exp_config_op=2..},limit=1] if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Return to Main Menu","color":"red","bold":true,"italic":true}',Lore:['{"text":"Dropping this item will return back to the config main menu","color":"white","italic":false}']}}}}] run function expansion:core/config_book/submenu_close
execute at @a[scores={exp_config_op=2..},limit=1] if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:lime_concrete",Count:1b,tag:{display:{Name:'{"text":"Easy","color":"green","bold":true,"italic":true}',Lore:['[{"text":"Shrink Timer: ","color":"gray","italic":true},{"text":"30 min","color":"light_purple"}]','[{"text":"Shrink Amount:","color":"gray","italic":true},{"text":" -5 blocks","color":"red"}]','[{"text":"Iron Core:","color":"white","italic":true},{"text":" +8 blocks","color":"green"}]','[{"text":"Gold Core:","color":"yellow","italic":true},{"text":" +18 blocks","color":"green"}]','[{"text":"Diamond Core: ","color":"aqua","italic":true},{"text":" +36 blocks","color":"green"}]','[{"text":"Emerald Core:","color":"dark_green","italic":true},{"text":" +42 blocks","color":"green"}]','[{"text":"Netherite Core:","color":"dark_red","italic":true},{"text":" +60 blocks","color":"green"}]']}}}}] run function expansion:core/config_book/settings/difficulty_selector/easy
execute at @a[scores={exp_config_op=2..},limit=1] if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:yellow_concrete",Count:1b,tag:{display:{Name:'{"text":"Medium","color":"yellow","bold":true,"italic":true}',Lore:['[{"text":"Shrink Timer: ","color":"gray","italic":true},{"text":"30 min","color":"light_purple"}]','[{"text":"Shrink Amount:","color":"gray","italic":true},{"text":" -8 blocks","color":"red"}]','[{"text":"Iron Core:","color":"white","italic":true},{"text":" +5 blocks","color":"green"}]','[{"text":"Gold Core:","color":"yellow","italic":true},{"text":" +15 blocks","color":"green"}]','[{"text":"Diamond Core: ","color":"aqua","italic":true},{"text":" +30 blocks","color":"green"}]','[{"text":"Emerald Core:","color":"dark_green","italic":true},{"text":" +36 blocks","color":"green"}]','[{"text":"Netherite Core:","color":"dark_red","italic":true},{"text":" +52 blocks","color":"green"}]']}}}}] run function expansion:core/config_book/settings/difficulty_selector/medium
execute at @a[scores={exp_config_op=2..},limit=1] if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:red_concrete",Count:1b,tag:{display:{Name:'{"text":"Hard","color":"red","bold":true,"italic":true}',Lore:['[{"text":"Shrink Timer: ","color":"gray","italic":true},{"text":"24 min","color":"light_purple"}]','[{"text":"Shrink Amount:","color":"gray","italic":true},{"text":" -10 blocks","color":"red"}]','[{"text":"Iron Core:","color":"white","italic":true},{"text":" +4 blocks","color":"green"}]','[{"text":"Gold Core:","color":"yellow","italic":true},{"text":" +12 blocks","color":"green"}]','[{"text":"Diamond Core: ","color":"aqua","italic":true},{"text":" +28 blocks","color":"green"}]','[{"text":"Emerald Core:","color":"dark_green","italic":true},{"text":" +32 blocks","color":"green"}]','[{"text":"Netherite Core:","color":"dark_red","italic":true},{"text":" +48 blocks","color":"green"}]']}}}}] run function expansion:core/config_book/settings/difficulty_selector/hard
execute at @a[scores={exp_config_op=2..},limit=1] if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:black_concrete",Count:1b,tag:{display:{Name:'{"text":"Expert","color":"dark_purple","bold":true,"italic":true}',Lore:['[{"text":"Shrink Timer: ","color":"gray","italic":true},{"text":"20 min","color":"light_purple"}]','[{"text":"Shrink Amount:","color":"gray","italic":true},{"text":" -10 blocks","color":"red"}]','[{"text":"Iron Core:","color":"white","italic":true},{"text":" +4 blocks","color":"green"}]','[{"text":"Gold Core:","color":"yellow","italic":true},{"text":" +10 blocks","color":"green"}]','[{"text":"Diamond Core: ","color":"aqua","italic":true},{"text":" +24 blocks","color":"green"}]','[{"text":"Emerald Core:","color":"dark_green","italic":true},{"text":" +28 blocks","color":"green"}]','[{"text":"Netherite Core:","color":"dark_red","italic":true},{"text":" +36 blocks","color":"green"}]','{"text":"Cores do not refill the timer when used","color":"red"}']}}}}] run function expansion:core/config_book/settings/difficulty_selector/expert
execute at @a[scores={exp_config_op=2..},limit=1] if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:wither_skeleton_skull",Count:1b,tag:{display:{Name:'{"text":"Hardcore","color":"black","bold":true,"italic":true,"obfuscated":true}',Lore:['[{"text":"Shrink Timer: ","color":"gray","italic":true},{"text":"20 min","color":"light_purple"}]','[{"text":"Shrink Amount:","color":"gray","italic":true},{"text":" -10 blocks","color":"red"}]','[{"text":"Iron Core:","color":"white","italic":true},{"text":" +4 blocks","color":"green"}]','[{"text":"Gold Core:","color":"yellow","italic":true},{"text":" +10 blocks","color":"green"}]','[{"text":"Diamond Core: ","color":"aqua","italic":true},{"text":" +24 blocks","color":"green"}]','[{"text":"Emerald Core:","color":"dark_green","italic":true},{"text":" +28 blocks","color":"green"}]','[{"text":"Netherite Core:","color":"dark_red","italic":true},{"text":" +36 blocks","color":"green"}]','{"text":"- Cores will subtract time from the timer when used","color":"red"}','{"text":"- Cores are much harder to craft","color":"red"}','[{"text":"- You only get one life...","color":"red"},{"text":"make it count","color":"dark_red","bold":true}]']}}}}] run function expansion:core/config_book/settings/difficulty_selector/hardcore