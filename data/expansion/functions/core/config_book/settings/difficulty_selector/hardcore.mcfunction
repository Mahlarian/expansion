replaceitem entity @a[scores={exp_config_op=1..}] hotbar.6 wither_skeleton_skull{display:{Name:'{"text":"Hardcore","color":"black","bold":true,"italic":true,"obfuscated":true}',Lore:['[{"text":"Shrink Timer: ","color":"gray","italic":true},{"text":"20 min","color":"light_purple"}]','[{"text":"Shrink Amount:","color":"gray","italic":true},{"text":" -10 blocks","color":"red"}]','[{"text":"Iron Core:","color":"white","italic":true},{"text":" +4 blocks","color":"green"}]','[{"text":"Gold Core:","color":"yellow","italic":true},{"text":" +10 blocks","color":"green"}]','[{"text":"Diamond Core: ","color":"aqua","italic":true},{"text":" +24 blocks","color":"green"}]','[{"text":"Emerald Core:","color":"dark_green","italic":true},{"text":" +28 blocks","color":"green"}]','[{"text":"Netherite Core:","color":"dark_red","italic":true},{"text":" +36 blocks","color":"green"}]','{"text":"- Cores will subtract time from the timer when used","color":"red"}','{"text":"- Cores are much harder to craft","color":"red"}','[{"text":"- You only get one life...","color":"red"},{"text":"make it count","color":"dark_red","bold":true}]']}} 1
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1000 1
scoreboard players set difficulty exp_data 5
tellraw @a [{"text":"hardcore","color":"dark_purple","obfuscated":true},{"text":" The creative mind is no longer free...","color":"light_purple","obfuscated":false},{"text":" hardcore","color":"dark_purple","obfuscated":true}]
kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:wither_skeleton_skull",Count:1b,tag:{display:{Name:'{"text":"Hardcore","color":"black","bold":true,"italic":true,"obfuscated":true}',Lore:['[{"text":"Shrink Timer: ","color":"gray","italic":true},{"text":"20 min","color":"light_purple"}]','[{"text":"Shrink Amount:","color":"gray","italic":true},{"text":" -10 blocks","color":"red"}]','[{"text":"Iron Core:","color":"white","italic":true},{"text":" +4 blocks","color":"green"}]','[{"text":"Gold Core:","color":"yellow","italic":true},{"text":" +10 blocks","color":"green"}]','[{"text":"Diamond Core: ","color":"aqua","italic":true},{"text":" +24 blocks","color":"green"}]','[{"text":"Emerald Core:","color":"dark_green","italic":true},{"text":" +28 blocks","color":"green"}]','[{"text":"Netherite Core:","color":"dark_red","italic":true},{"text":" +36 blocks","color":"green"}]','{"text":"- Cores will subtract time from the timer when used","color":"red"}','{"text":"- Cores are much harder to craft","color":"red"}','[{"text":"- You only get one life...","color":"red"},{"text":"make it count","color":"dark_red","bold":true}]']}}}}]