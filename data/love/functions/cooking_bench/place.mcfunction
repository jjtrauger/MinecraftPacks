#summon scaffolding to serve as hitbox. it hides in the model of the custom block
setblock ~ ~ ~ scaffolding{}

#summon invisible chest thing atop it, has to be on armor stand so i can lock its position and delte it with block
summon armor_stand ~ ~0.5 ~ {Invulnerable:true,NoGravity:true,Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:chest_minecart",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},CustomName:'{"text":"Cutting Table"}',Items:[{Slot:26b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:22150005}}]}]}

#nbt tag as placed so breaking it triggers remove
tag @s add placed

#following code was first attempt at fixing the invisible minecart dilemma- now useless but will keep here to reference for understanding passengers and nested tags
#summon minecraft:minecart ~ ~1 ~ {Passengers:[{id:"minecraft:armor_stand",Passengers:[{id:"minecraft:minecart"}],Invisible:1,Fixed:1,HandItems:[{id:"minecraft:minecart",Count:1b,tag:{CustomModelData:22150006}}]}]}