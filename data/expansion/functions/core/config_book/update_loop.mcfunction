effect give @a[scores={exp_config_op=2}] resistance 1 4 true
effect give @a[scores={exp_config_op=2}] blindness 2 0 true
effect give @a[scores={exp_config_op=2}] slowness 1 10 true
effect give @a[scores={exp_config_op=2}] jump_boost 1 200 true
execute as @a[scores={exp_config_op=2}] at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
title @a[scores={exp_config_op=2}] actionbar {"text":"Please exit config mode to regain control","color":"red","bold":true}
execute as @a[scores={exp_config_op=2}] at @s run tp @e[tag=interact_lock,sort=nearest,limit=1] ~ ~1 ~
gamemode adventure @a[scores={exp_config_op=2}]
function expansion:core/config_book/drop_check