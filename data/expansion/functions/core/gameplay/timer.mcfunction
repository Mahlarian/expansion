schedule function expansion:core/gameplay/timer 1s
scoreboard players remove sec exp_timer 1
execute if score min exp_timer matches 60.. run scoreboard players add hour exp_timer 1
execute if score min exp_timer matches 60.. run scoreboard players remove min exp_timer 60
execute if score min exp_timer matches 0 if score sec exp_timer matches -1 if score hour exp_timer matches 1.. run function expansion:core/gameplay/sequences/translate_hour
execute if score sec exp_timer matches -1 run scoreboard players remove min exp_timer 1
execute if score sec exp_timer matches -1 run scoreboard players set sec exp_timer 59
execute if score hour exp_timer matches 0 if score min exp_timer matches 0 if score sec exp_timer matches 0..10 run playsound block.note_block.bit master @a ~ ~ ~ 1000 0.75
execute if score hour exp_timer matches 0 if score min exp_timer matches 0 if score sec exp_timer matches 0..10 run tellraw @a [{"text":"[Expansion] ","color":"aqua"},{"text":"Border ","color":"white"},{"text":"shrinking","color":"red"},{"text":" in","color":"white"},{"score":{"name":" sec","objective":"exp_timer"},"color":"red","bold":true},{"text":" seconds!","color":"white"}]
execute if score hour exp_timer matches 0 if score min exp_timer matches ..0 if score sec exp_timer matches 0 run function expansion:core/gameplay/shrink
bossbar set expansion:timer name [{"text":"Border shrinking in ","color":"white"},{"score":{"name":"hour","objective":"exp_timer"},"color":"aqua"},{"text":"h "},{"score":{"name":"min","objective":"exp_timer"},"color":"aqua"},{"text":"m "},{"score":{"name":"sec","objective":"exp_timer"},"color":"aqua"},{"text":"s"}]
