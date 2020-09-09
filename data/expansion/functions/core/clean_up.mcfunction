scoreboard objectives remove exp_config_op
scoreboard objectives remove exp_coredetect
scoreboard objectives remove exp_data
scoreboard objectives remove exp_timer
bossbar remove expansion:timer
kill @e[type=area_effect_cloud,tag=border_marker]
worldborder center 0 0
worldborder set 29999984
tellraw @a [{"text":"[Expansion] ","color":"aqua"},{"text":"Removed successful. To fully uninstall, remove the datapack folder from your world folder. To re-enable Expansion, run ","color":"white"},{"text":"/datapack enable \"file/expansion\"","color":"light_purple"}]
datapack disable "file/expansion"
reload