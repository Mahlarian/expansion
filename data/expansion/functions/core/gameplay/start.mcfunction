execute if score spawn_ref exp_data matches 4 run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["border_marker"]}
scoreboard players set game_state exp_data 2
function expansion:core/gameplay/sequences/cosmetic_start
schedule function expansion:core/gameplay/sequences/logic_start 10s