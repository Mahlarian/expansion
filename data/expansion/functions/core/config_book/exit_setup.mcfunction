function expansion:core/config_book/clear_hotbar
say Config off
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Exit Config","color":"red","bold":true}',Lore:['{"text":"Dropping this item will exit the config menu and return the config book back to you","color":"white","bold":false,"italic":false}']}}}}]
scoreboard players set game_state exp_data 0
tellraw @a[scores={exp_config_op=..3}] [{"text":"[Expansion] ","color":"aqua"},{"text":"Config Mode -","bold":true},{"text":" Disabled","color":"red","bold":true},{"text":"\nIt is safe to interact with the world again\n\n","color":"green"},{"text":"If you're ready, you can use the"},{"text":" config book","color":"light_purple","bold":true},{"text":" to start the game","color":"aqua"}]
scoreboard players reset @a[scores={exp_config_op=..3}] exp_config_op