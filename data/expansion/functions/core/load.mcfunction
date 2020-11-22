# Because MC is big dumb, anything that involves the player needs to be done in post-load, which waits for the server to load.
# These commands load on server start, before the player is in the server.
# It's actually retarded I even have to do this in the first place, like wtf? !.15 didn't have this problem...
execute unless score game_state exp_data matches 2 run schedule clear expansion:core/gameplay/craft_detector
scoreboard objectives add exp_data dummy
scoreboard objectives add exp_timer dummy
scoreboard objectives add exp_config_op dummy
scoreboard objectives add blocks dummy {"text": "Blocks"}
scoreboard objectives add exp_coredetect minecraft.used:carrot_on_a_stick
execute unless score difficulty exp_data matches 1..5 run scoreboard players set difficulty exp_data 2
execute unless score game_state exp_data matches 0.. run scoreboard players set game_state exp_data 0
execute unless score cosmetic_start exp_timer matches 0..12 run scoreboard players set cosmetic_start exp_timer 0
execute unless score hour exp_timer matches 0.. run scoreboard players set hour exp_timer 0
execute unless score min exp_timer matches 0.. run scoreboard players set min exp_timer 0
execute unless score sec exp_timer matches 0.. run scoreboard players set sec exp_timer 0
execute unless score bar exp_timer matches 0.. run scoreboard players set bar exp_timer 0
execute unless score spawn_ref exp_data matches 1..4 run scoreboard players set spawn_ref exp_data 4
execute unless score grace_period exp_data matches 0..1 run scoreboard players set grace_period exp_data 1
schedule function expansion:core/post_load 2s