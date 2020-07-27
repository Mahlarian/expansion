# Because MC is big dumb, anything that involves the player needs to be done in post-load, which waits for the server to load.
# These commands load on server start, before the player is in the server.
# It's actually retarded I even have to do this in the first place, like wtf? !.15 didn't have this problem...
schedule clear expansion:core/gameplay/craft_detector
scoreboard objectives add exp_data dummy
scoreboard objectives add exp_timer dummy
scoreboard objectives add exp_config_op dummy
scoreboard objectives add exp_coredetect minecraft.used:carrot_on_a_stick
execute unless score difficulty exp_data matches 1..5 run scoreboard players set difficulty exp_data 0
execute unless score game_state exp_data matches 0.. run scoreboard players set game_state exp_data 0
execute unless score cosmetic_start exp_timer matches 0..12 run scoreboard players set cosmetic_start exp_timer 0
schedule function expansion:core/post_load 2s