# particle dragon_breath ~ ~ ~ 0 0 0 0 1
execute as @a positioned ^ ^ ^1 if block ~ ~ ~ air run function love:gui_stuff/look

#execute as @e[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run effect give @s glowing 1 1 true

#scoreboard players remove @s range 1

#execute if score @s range matches 1.. if block ~ ~ ~ air positioned ^ ^ ^0.5 run function love:gui_stuff/look

#execute as @e[dx=0,type=chest_minecart,tag=cook_ui] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0,type=chest_minecart,tag=cook_ui] run tellraw @p "You are cooking!"
execute as @e[dx=0,type=chest_minecart,tag=cook_ui] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0,type=chest_minecart,tag=cook_ui] run scoreboard players set @p ui 1


#execute if score @p ui matches 1 run data modify entity @e[type=chest_minecart,tag=cook_ui,nbt={Items:[{Slot:11b,id:"minecraft:iron_ingot"}]},sort=nearest,limit=1] Items[{Slot:11b}] set value {id:"minecraft:bread",tag:{CustomModelData:22150001,display:{Name:'{"text":"Sushi"}'}},Count:1b,Slot:15b}

#execute as @e[type=chest_minecart,tag=cook_ui,sort=nearest] run scoreboard players set @p craftercount data get entity @s Inventory[{Slot:11b}].Count 

#execute as @e[type=chest_minecart,tag=cook_ui,sort=nearest] at @s store result score @p craftercount run data get entity @s Items[{Slot:11b}].Count

#execute if score @p ui matches 1 run data modify entity @e[type=chest_minecart,tag=cook_ui,nbt={Items:[{Slot:11b,id:"minecraft:iron_ingot"}]},sort=nearest,limit=1] Items[{Slot:11b}] set value {id:"minecraft:bread",tag:{CustomModelData:22150001,display:{Name:'{"text":"Sushi"}'}},Count:1b,Slot:15b}

#execute as @e[type=chest_minecart,tag=cook_ui,sort=nearest] if score @p ui matches 1 store result entity @s Items[{Slot:15b}].Count byte 1 run scoreboard players get @p craftercount

#data modify entity @e[type=chest_minecart,tag=cook_ui,nbt={Items:[{Slot:11b,Count:2b,id:"minecraft:iron_ingot"}]},sort=nearest,limit=1] Items[{Slot:11b,Count:2b}] set value {id:"minecraft:bread",tag:{CustomModelData:22150001,display:{Name:'{"text":"Sushi"}'}},Count:2b,Slot:15b}

#scoreboard players remove @s range 6

#execute if score @s range matches 1.. if block ~ ~ ~ air positioned ^ ^ ^0.5 run function love:gui_stuff/look

execute as @e[type=chest_minecart,sort=nearest,nbt={Items:[{Slot:11b,id:"minecraft:iron_ingot"}]}] unless entity @s[nbt={Items:[{Slot:15b,id:"minecraft:bread",tag:{Sushi:1b}}]}] run function love:gui_stuff/alchemy