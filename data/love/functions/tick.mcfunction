############## Custom Block Stuff ##############

#verify function to place cooking bench and cooking crafter
execute as @e[type=minecraft:item_frame,tag=cookingbench,tag=!placed] at @s run function love:cooking_bench/place

#verify function to remove cooking bench
execute as @e[type=minecraft:item_frame,tag=cookingbench,tag=placed] at @s unless block ~ ~ ~ minecraft:scaffolding run function love:cooking_bench/remove

#handle all minecart types together- the cart is invisible, run function to fill space with custom block model that looks like the minecart
execute as @e[type=#minecraft:minecarts,tag=!invisible_minecart] run function invisible_minecarts

execute run function love:gui_stuff/start_look
