#summon scaffolding to serve as hitbox. it hides in the model of the custom block
setblock ~ ~ ~ scaffolding{}

#summon invisible chest thing atop it, has to be on armor stand so i can lock its position and delte it with block
summon armor_stand ~ ~0.6 ~ {Invulnerable:true,NoGravity:true,Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:chest_minecart",Tags:[cook_ui],CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},CustomName:'{"text":"Cutting Table"}',Items:[{Slot:26b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:22150005}}]}]}
#summon marker ~ ~1 ~ {Tags:[marker_ui]}
#,LootTable:"minecraft:cookbenchgui"

#nbt tag as placed so breaking it triggers remove
tag @s add placed

## spawn a marker with a unique id value
#execute unless entity @e[type=marker,tag=ui,distance=..0.5] run summon marker 0 0 0 {Tags:["ui","new"]}
#scoreboard players add .global ui.id 1
#scoreboard players operation @e[tag=new] ui.id = .global ui.id
#scoreboard players operation @s ui.id = .global ui.id

#tag @e remove new

#following code was first attempt at fixing the invisible minecart dilemma- now useless but will keep here to reference for understanding passengers and nested tags
#summon minecraft:minecart ~ ~1 ~ {Passengers:[{id:"minecraft:armor_stand",Passengers:[{id:"minecraft:minecart"}],Invisible:1,Fixed:1,HandItems:[{id:"minecraft:minecart",Count:1b,tag:{CustomModelData:22150006}}]}]}