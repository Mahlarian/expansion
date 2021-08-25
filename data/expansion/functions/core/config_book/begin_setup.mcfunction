# Game states = 0: not started 1: config mode 2: started 3: game over
scoreboard players set @s exp_config_op 1
scoreboard players set game_state exp_data 1
tag @s[gamemode=survival] add config_survival
tag @s[gamemode=creative] add config_creative
execute at @s run summon slime ~ ~ ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Size:1,Tags:["interact_lock"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1999980,ShowParticles:0b}]}
tellraw @a[scores={exp_config_op=1..}] [{"text":"\nConfig Mode - ","color":"aqua","bold":true},{"text":"Enabled\n\n","color":"green"},{"text":"While holding an item in your hand, press your ","color":"white","bold":false},{"text":"DROP","color":"light_purple"},{"text":" key to apply the setting\nWhen you are finished, you can drop ","color":"white","bold":false},{"text":"Slot #9 ","color":"light_purple"},{"text":"or click ","color":"white","bold":false},{"text":"here","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Clicking this text will exit Config Mode"}]},"clickEvent":{"action":"run_command","value":"function expansion:core/config_book/exit_setup"}},{"text":"\n\nTip: "},{"text":"Hover over an item in your inventory for more information on the setting","color":"white","bold":false},{"text":"\n\nSaving/Reloading is not necessary, your changes are made automatically and will take place when the game starts!\n\n","color":"gray"}]
function expansion:core/config_book/main_menu
scoreboard players set @s exp_config_op 2
