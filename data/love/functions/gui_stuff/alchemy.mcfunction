#execute if data storage @e[type=minecart_chest, tag=cook_ui] container[{Slot:11b,id:"minecraft:iron_ingot"}] run function a:ui/page/vend/buy_one

#data modify entity @e[type=chest_minecart,tag=cook_ui,nbt={Items:[{Slot:11b,id:"minecraft:iron_ingot"}]},sort=nearest,limit=1] Items[{Slot:16b}] set value {id:"minecraft:golden_ingot",Count:1b}

item replace entity @s container.15 with minecraft:bread{Sushi:1b,CustomModelData:22150001,display:{Name:'{"text":"Sushi"}'}}

data modify entity @s Items[{Slot:15b}].Count set from entity @s Items[{Slot:11b}].Count

execute if entity @s[nbt={Items:[{Slot:11b,id:"minecraft:iron_ingot"}]}] unless entity @s[nbt={Items:[{Slot:15b,id:"minecraft:bread",tag:{Sushi:1b}}]}] run data modify entity @s Items[{Slot:11b}].Count set value 0