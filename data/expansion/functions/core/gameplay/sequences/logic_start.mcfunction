# this handles scheduling the loops
schedule clear expansion:core/gameplay/config_crafter
schedule clear expansion:core/gameplay/craft_detector
schedule function expansion:core/gameplay/craft_detector 10t
# this handles spawnref
# this part specifically handles worldspawn
execute if score spawn_ref exp_data matches 1 run gamerule doImmediateRespawn true
execute if score spawn_ref exp_data matches 1 run gamerule keepInventory true
execute if score spawn_ref exp_data matches 1 run gamerule showDeathMessages false
execute if score spawn_ref exp_data matches 1 run kill @a
# GET BONKED IDIOT
execute if score spawn_ref exp_data matches 1 run gamerule doImmediateRespawn false
execute if score spawn_ref exp_data matches 1 run gamerule keepInventory false
execute if score spawn_ref exp_data matches 1 run gamerule showDeathMessages true
execute if score spawn_ref exp_data matches 1 at @a[limit=1,sort=random] run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["border_marker"]}
# this part specifically handles 0,0
execute if score spawn_ref exp_data matches 2 run spreadplayers 0 0 0 1 true @a
# teleports players to bordermarker
execute if entity @e[limit=1,type=area_effect_cloud,tag=border_marker] as @e[type=area_effect_cloud,tag=border_marker,limit=1] run tp @a @s
# creates the border
execute as @e[limit=1,tag=border_marker,type=area_effect_cloud] at @s run worldborder center ~ ~
execute unless entity @e[tag=border_marker,type=area_effect_cloud] run worldborder center 0 0
worldborder warning distance 8
worldborder warning time 3
worldborder set 64 0
execute store result score blocks blocks run worldborder get
# bossbar handling
bossbar add expansion:timer {"text":"placeholder"}
execute if score difficulty exp_data matches 1..2 run bossbar set expansion max 1800
execute if score difficulty exp_data matches 1..2 run scoreboard players set bar exp_timer 1800
execute if score difficulty exp_data matches 3 run bossbar set expansion max 1440
execute if score difficulty exp_data matches 3 run scoreboard players set bar exp_timer 1440
execute if score difficulty exp_data matches 4..5 run bossbar set expansion max 1200
execute if score difficulty exp_data matches 4..5 run scoreboard players set bar exp_timer 1200
# starts gameloop
execute if score grace_period exp_data matches 1 run scoreboard players set grace_m exp_timer 10
execute if score grace_period exp_data matches 1 run scoreboard players set grace_bar exp_timer 600
execute if score grace_period exp_data matches 1 run bossbar set expansion:timer players @a
execute if score grace_period exp_data matches 1 run bossbar set expansion:timer max 600
execute if score grace_period exp_data matches 1 run bossbar set expansion:timer color green
execute if score grace_period exp_data matches 1 run scoreboard players set grace_s exp_timer 0
execute if score grace_period exp_data matches 1 run function expansion:core/gameplay/grace_timer
execute if score grace_period exp_data matches 0 run function expansion:core/gameplay/timer