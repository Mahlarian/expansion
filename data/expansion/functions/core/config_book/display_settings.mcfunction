tellraw @s [{"text":"[Expansion] ","color":"aqua"},{"text":"DISPLAY MODE\n","color":"blue","bold":true},{"text":"These are the current settings that are active:","color":"white"}]
# difficulty
execute if score difficulty exp_data matches 1 run tellraw @s [{"text":"- The difficulty is set to ","color":"white"},{"text":"easy","color":"green","bold":true,"underlined":true}]
execute if score difficulty exp_data matches 2 run tellraw @s [{"text":"- The difficulty is set to ","color":"white"},{"text":"medium","color":"yellow","bold":true,"underlined":true}]
execute if score difficulty exp_data matches 3 run tellraw @s [{"text":"- The difficulty is set to ","color":"white"},{"text":"hard","color":"red","bold":true,"underlined":true}]
execute if score difficulty exp_data matches 4 run tellraw @s [{"text":"- The difficulty is set to ","color":"white"},{"text":"expert","color":"dark_purple","bold":true,"underlined":true}]
execute if score difficulty exp_data matches 5 run tellraw @s [{"text":"- The difficulty is set to ","color":"white"},{"text":"hardcore","color":"black","bold":true,"underlined":true}]
execute unless score difficulty exp_data matches 1..5 run tellraw @s {"text":"- An Issue occurred while showing DIFFICULTY value. Value is either too low or too high, or it doesn't exit.","color":"red"}
# spawn point
execute if score spawn_ref exp_data matches 1 run tellraw @s [{"text":"- When the game starts, ","color":"white"},{"text":"world spawn","color":"light_purple"},{"text":" will be used as the center of the border","color":"white"}]
execute if score spawn_ref exp_data matches 2 run tellraw @s [{"text":"- When the game starts, ","color":"white"},{"text":"0,0","color":"light_purple"},{"text":" will be used as the center of the border","color":"white"}]
execute if score spawn_ref exp_data matches 3 run tellraw @s [{"text":"- When the game starts, ","color":"white"},{"text":"custom player location","color":"light_purple"},{"text":" will be used as the center of the border","color":"white"}]
execute if score spawn_ref exp_data matches 4 run tellraw @s [{"text":"- When the game starts, ","color":"white"},{"text":"the position of the player who started the game","color":"light_purple"},{"text":" will be used as the center of the border","color":"white"}]
execute unless score spawn_ref exp_data matches 1..3 run tellraw @s {"text":"- An Issue occurred while showing SPAWN_REF value. Value is either too low or too high, or it doesn't exit.","color":"red"}
# grace period
execute if score grace_period exp_data matches 1 run tellraw @s [{"text":"- When the game starts grace period will be ","color":"white"},{"text":"enabled","color":"green","bold":true}]
execute if score grace_period exp_data matches 0 run tellraw @s [{"text":"- When the game starts grace period will be ","color":"white"},{"text":"disabled","color":"red","bold":true}]
execute unless score grace_period exp_data matches 0..1 run tellraw @s {"text":"- An Issue occurred while showing GRACE_PERIOD value. Value is either too low or too high, or it doesn't exit.","color":"red"}
replaceitem entity @s hotbar.7 book{display:{Name:'{"text":"View current settings","color":"blue","bold":true,"italic":true}',Lore:['{"text":"Dropping this item will display the current settings","color":"white","italic":true}']}} 1
playsound ui.button.click master @s ~ ~ ~ 1000 1.5
kill @e[type=item,nbt={Item:{id:"minecraft:book",Count:1b,tag:{display:{Name:'{"text":"View current settings","color":"blue","bold":true,"italic":true}',Lore:['{"text":"Dropping this item will display the current settings","color":"white","italic":true}']}}}}]