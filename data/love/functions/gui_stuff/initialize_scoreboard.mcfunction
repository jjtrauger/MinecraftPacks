tellraw @a {"text":"Initializing UI Scoreboard"}

#scoreboard objectives add ui dummy
#scoreboard players set #1 ui 1
#scoreboard objectives add ui.id dummy

#scoreboard objectives add Chest dummy
#scoreboard players set dummy Chest 1
#scoreboard players set @a Chest 0

#scoreboard objectives add mcChest dummy
#scoreboard players set dummy mcChest 1
#scoreboard players set @a mcChest 0

#scoreboard objectives add ui.page dummy
#scoreboard objectives add ui.index dummy

#scoreboard objectives add ui dummy
scoreboard players set @a ui 0
scoreboard players set @a craftercount 0

scoreboard objectives add Crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add Walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add Sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add Climb minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add Jump minecraft.custom:minecraft.jump 

#scoreboard objectives add open_ui minecraft.custom:minecraft.open_chest

#scoreboard objectives add Chest minecraft.used:chest_minecart

#scoreboard objectives add mcChest minecraft.used:chest_minecart

#scoreboard objectives setdisplay sidebar open_ui

forceload add 0 0
setblock 0 -64 0 yellow_shulker_box