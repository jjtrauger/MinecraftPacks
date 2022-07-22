#use blockstates of command blocks to link to minecart texture that will fill the invisible minecarts, acting as its visual.

data merge entity @s[type=minecart] {CustomDisplayTile:1,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"down"}},DisplayOffset:4}

#make name distinction here so UI chests will be hidden
data merge entity @s[type=chest_minecart,name=!"Cutting Table"] {CustomDisplayTile:1,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"up"}},DisplayOffset:4}

data merge entity @s[type=furnace_minecart] {CustomDisplayTile:1,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"north"}},DisplayOffset:4}
data merge entity @s[type=tnt_minecart] {CustomDisplayTile:1,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"south"}},DisplayOffset:4}
data merge entity @s[type=hopper_minecart] {CustomDisplayTile:1,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"west"}},DisplayOffset:4}
tag @s add invisible_minecart