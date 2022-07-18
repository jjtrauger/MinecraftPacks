summon item ~ ~0.5 ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{display:{Name:'{"text":"Cooking Bench"}'},CustomModelData:22150002,EntityTag:{Silent:1b,Tags:["cookingbench"],Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:22150002}},Invulnerable:1b,Invisible:1b,Fixed:1b,Facing:1}}}}

kill @e[type=item,nbt={Item:{id:"minecraft:scaffolding"}},distance=0..2,sort=nearest,limit=1]
#kill @e[type=armor_stand, distance=0..2,sort=nearest,limit=1]

kill @s