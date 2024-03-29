execute at @e[type=item,nbt={Item:{id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Exit Config","color":"red","bold":true}',Lore:['{"text":"Dropping this item will exit the config menu","color":"white","bold":false,"italic":true}','{"text":"and return the config book back to you","color":"white","bold":false,"italic":true}']}}}}] as @a[scores={exp_config_op=1..},limit=1,sort=nearest] run tag @s add exp_config_cleanup
execute as @e[tag=exp_config_cleanup] run function expansion:core/config_book/clear_hotbar
execute as @e[tag=exp_config_cleanup] run function expansion:give_book
execute as @e[tag=exp_config_cleanup] run tellraw @s [{"text":"\n[Expansion] ","color":"aqua"},{"text":"Config Mode -","bold":true},{"text":" Disabled","color":"red","bold":true},{"text":"\n\nIf you're ready, you can use the"},{"text":" config book","color":"light_purple","bold":true},{"text":" to start the game","color":"aqua"}]
execute as @e[tag=exp_config_cleanup] run scoreboard players reset @s exp_config_op
execute as @e[tag=exp_config_cleanup] at @s run data merge entity @e[type=slime,tag=interact_lock,sort=nearest,limit=1] {Invulnerable:0b,Size:0}
execute as @e[tag=exp_config_cleanup] at @s run tp @e[tag=interact_lock,sort=nearest,limit=1] 0 0 0
execute unless entity @a[scores={exp_config_op=1..}] run scoreboard players set game_state exp_data 0
execute as @e[tag=exp_config_cleanup] run tag @s remove exp_config_cleanup
execute as @e[tag=config_survival] run gamemode survival @s
execute as @e[tag=config_creative] run gamemode creative @s
execute as @e[tag=config_survival] run tag @s remove config_survival
execute as @e[tag=config_creative] run tag @s remove config_creative
execute if score vanilla_diff exp_data matches 0 run difficulty peaceful
scoreboard players reset vanilla_diff exp_data
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Exit Config","color":"red","bold":true}',Lore:['{"text":"Dropping this item will exit the config menu","color":"white","bold":false,"italic":true}','{"text":"and return the config book back to you","color":"white","bold":false,"italic":true}']}}}}]