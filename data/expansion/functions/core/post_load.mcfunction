# These commands execute once the player is in the server. Messages or execute commands involving the player should be put here
# to ensure they run correctly.
execute if score game_state exp_data matches 0..1 run tellraw @a [{"text":"[Expansion] ","color":"aqua"},{"text":"⚠ Datapack has been found, but game has not been started yet. Use ","color":"red"},{"text":"config book","color":"#ff4778","bold":true},{"text":" to start game.","color":"red"}]
tellraw @a [{"text":"[Expansion] ","color":"aqua"},{"text":"Game has initialized successfully","color":"green"}]
# These are a form of tick clocks, but they're not as important as the things in tick, so these run on slower clocks to reduce
# the amount of commands run per second
schedule function expansion:core/gameplay/config_crafter 10t
# function for the clock will go here