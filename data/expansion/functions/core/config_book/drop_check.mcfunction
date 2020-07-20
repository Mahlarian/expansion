execute at @a[scores={exp_config_op=2..}] if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Exit Config","color":"red","bold":true}',Lore:['{"text":"Dropping this item will exit the config menu and return the config book back to you","color":"white","bold":false,"italic":false}']}}}}] run function expansion:core/config_book/exit_setup
execute at @a[scores={exp_config_op=2..}] if entity @e[type=item,nbt={Item:{id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":"Difficulty","color":"red","bold":true,"italic":true}',Lore:['{"text":"Dropping this item will open the difficulty menu","color":"white"}']}}}}] run function expansion:core/config_book/settings/difficulty_selector/setup
#submenu
execute at @a[scores={exp_config_op=2..}] if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Return to Main Menu","color":"red","bold":true,"italic":true}',Lore:['{"text":"Dropping this item will return back to the config main menu","color":"white","italic":false}']}}}}] run function expansion:core/config_book/submenu_close
