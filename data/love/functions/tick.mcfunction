execute as @e[type=minecraft:item_frame,tag=cookingbench,tag=!placed] at @s run function love:cooking_bench/place

execute as @e[type=minecraft:item_frame,tag=cookingbench,tag=placed] at @s unless block ~ ~ ~ minecraft:scaffolding run function love:cooking_bench/remove