# Setup
execute if entity @e[type=minecraft:ender_dragon] if entity @e[type=minecraft:end_crystal,tag=!bdf_crystal] unless entity @e[tag=bdf_controller,tag=bdf_active] run function bdf:setup

# Controller
execute as @e[type=minecraft:ender_dragon,nbt={DragonPhase:9},tag=!bdf_teardown] run function bdf:teardown
execute if entity @e[tag=bdf_controller,tag=bdf_active] unless entity @e[type=minecraft:ender_dragon,tag=!bdf_teardown] run function bdf:teardown
execute if entity @e[type=minecraft:ender_dragon] if entity @e[tag=bdf_controller,tag=bdf_active] run function bdf:controller/tick