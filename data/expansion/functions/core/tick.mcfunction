# Game states = 0: not started 1: config mode 2: started 3: game over
execute if score game_state exp_data matches 1 run function expansion:core/config_book/drop_check
execute if score game_state exp_data matches 2 run function expansion:core/gameplay/cores/score_checker
# This runs single comman