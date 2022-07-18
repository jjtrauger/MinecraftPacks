#summon scaffolding to serve as hitbox. it hides in the model of the custom block
setblock ~ ~ ~ scaffolding

#creat armor stand in it to detect right click
#summon armor_stand ~ ~ ~ {NoGravity:true,Invisible:true,Marker:1b,CustomName:invisible_block,Tags:["crafter"]}

#nbt tag as placed so breaking it triggers remove
tag @s add placed