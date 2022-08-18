#tellraw @a "test"
#file is properly linked and looping

#execute as @a if score @s Chest = dummy Chest run tellraw @s "hey"

#execute as @a if score @s Crouch 

#execute as @a if score @s mcChest = dummy mcChest run tellraw @s "hey"

#execute if score #player_io ui matches 1 if data storage ui container[{Slot:11b,id:"minecraft:gold_ingot"}] run function a:ui/page/vend/buy_one
#execute if score #player_io ui matches 2 if data storage ui container[{Slot:11b,id:"minecraft:gold_ingot"}] run function a:ui/page/vend/buy_all

#execute as @e[type=chest_minecart,tag=cook_ui] at @s run scoreboard players set @a[distance=0..6] ui 1
#execute as @a if score @s ui matches 1 run tellraw @a "currently cooking"

execute run function love:gui_stuff/start_look

execute as @a if score @s ui matches 1 run function love:gui_stuff/alchemy