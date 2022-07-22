#summon the handheld item of the fake block, really an item frame with itself in it, edited to display something the size of a block
summon item ~ ~0.5 ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{display:{Name:'{"text":"Cooking Bench"}'},CustomModelData:22150002,EntityTag:{Silent:1b,Tags:["cookingbench"],Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:22150002}},Invulnerable:1b,Invisible:1b,Fixed:1b,Facing:1}}}}

#kill the scaffolding item that would drop
kill @e[type=item,nbt={Item:{id:"minecraft:scaffolding"}},distance=0..2,sort=nearest,limit=1]

#kill the armors tand holding the minecart chest
kill @e[type=armor_stand, distance=0..2,sort=nearest,limit=1]

#kill the minecart chest just in case
kill @e[type=chest_minecart,distance=0..2,sort=nearest,limit=1]

#kill the barrier holding the UI inside the minecart chest in case it drops
kill @e[type=item,nbt={Item:{id:"minecraft:barrier"}}]


kill @s