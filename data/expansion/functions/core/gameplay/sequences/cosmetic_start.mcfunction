schedule function expansion:core/gameplay/sequences/cosmetic_start 1s
execute if score cosmetic_start exp_timer matches 0 run scoreboard players set cosmetic_start exp_timer 11
execute if score cosmetic_start exp_timer matches 11 run title @a title {"text":"Expansion","color":"blue"}
execute if score cosmetic_start exp_timer matches 11 run title @a subtitle ["",{"text":"A mini-game by ","color":"aqua"},{"text":"Mahlarian","color":"light_purple"}]
execute if score cosmetic_start exp_timer matches 11 run title @a times 20 40 20
execute if score cosmetic_start exp_timer matches 11 run playsound block.beacon.power_select master @a ~ ~ ~ 1000 0.8
execute if score cosmetic_start exp_timer matches 10 run playsound block.beacon.ambient master @a ~ ~ ~ 1000 1
execute if score cosmetic_start exp_timer matches 7 run playsound block.beacon.ambient master @a ~ ~ ~ 1000 1
execute if score cosmetic_start exp_timer matches 7 run playsound block.note_block.bit master @a ~ ~ ~ 1000 0.8
execute if score cosmetic_start exp_timer matches 7 run title @a title {"text":"Game starting...","color":"blue"}
execute if score cosmetic_start exp_timer matches 7 run title @a subtitle ["",{"text":"Starting in ","color":"aqua"},{"text":"5","color":"light_purple"},{"text":" seconds","color":"aqua"}]
execute if score cosmetic_start exp_timer matches 7 run title @a times 10 21 0
execute if score cosmetic_start exp_timer matches 6 run playsound block.note_block.bit master @a ~ ~ ~ 1000 0.8
execute if score cosmetic_start exp_timer matches 6 run title @a title {"text":"Game starting...","color":"blue"}
execute if score cosmetic_start exp_timer matches 6 run title @a subtitle ["",{"text":"Starting in ","color":"aqua"},{"text":"4","color":"light_purple"},{"text":" seconds","color":"aqua"}]
execute if score cosmetic_start exp_timer matches 6 run title @a times 0 21 0
execute if score cosmetic_start exp_timer matches 5 run playsound block.note_block.bit master @a ~ ~ ~ 1000 0.8
execute if score cosmetic_start exp_timer matches 5 run title @a title {"text":"Game starting...","color":"blue"}
execute if score cosmetic_start exp_timer matches 5 run title @a subtitle ["",{"text":"Starting in ","color":"aqua"},{"text":"3","color":"light_purple"},{"text":" seconds","color":"aqua"}]
execute if score cosmetic_start exp_timer matches 5 run title @a times 0 21 0
execute if score cosmetic_start exp_timer matches 4 run playsound block.beacon.ambient master @a ~ ~ ~ 1000 1
execute if score cosmetic_start exp_timer matches 4 run playsound block.note_block.bit master @a ~ ~ ~ 1000 0.8
execute if score cosmetic_start exp_timer matches 4 run title @a title {"text":"Game starting...","color":"blue"}
execute if score cosmetic_start exp_timer matches 4 run title @a subtitle ["",{"text":"Starting in ","color":"aqua"},{"text":"2","color":"light_purple"},{"text":" seconds","color":"aqua"}]
execute if score cosmetic_start exp_timer matches 4 run title @a times 0 21 0
execute if score cosmetic_start exp_timer matches 3 run playsound block.note_block.bit master @a ~ ~ ~ 1000 0.8
execute if score cosmetic_start exp_timer matches 3 run title @a title {"text":"Game starting...","color":"blue"}
execute if score cosmetic_start exp_timer matches 3 run title @a subtitle ["",{"text":"Starting in ","color":"aqua"},{"text":"1","color":"light_purple"},{"text":" seconds","color":"aqua"}]
execute if score cosmetic_start exp_timer matches 3 run title @a times 0 21 0
execute if score cosmetic_start exp_timer matches 2 run playsound block.note_block.bit master @a ~ ~ ~ 1000 1.2
execute if score cosmetic_start exp_timer matches 2 run title @a title {"text":"Game starting...","color":"blue"}
execute if score cosmetic_start exp_timer matches 2 run title @a subtitle ["",{"text":"Starting ","color":"aqua"},{"text":"now","color":"light_purple"}]
execute if score cosmetic_start exp_timer matches 2 run title @a times 0 21 40
execute if score cosmetic_start exp_timer matches 2 run function expansion:core/gameplay/sequences/logic_start
execute if score cosmetic_start exp_timer matches 1..11 run scoreboard players remove cosmetic_start exp_timer 1
execute if score cosmetic_start exp_timer matches 1 run schedule clear expansion:core/gameplay/sequences/cosmetic_start
execute if score cosmetic_start exp_timer matches 1 run say Script complete
execute if score cosmetic_start exp_timer matches 1 run scoreboard players set cosmetic_start exp_timer 0