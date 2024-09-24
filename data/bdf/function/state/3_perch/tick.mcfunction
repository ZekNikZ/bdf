# Only allow dragon to perch
execute unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:2}] unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:3}] unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:5}] unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:6}] unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:7}] as @e[type=minecraft:ender_dragon,limit=1] run data merge entity @s {DragonPhase:2}

# Detect transition
execute if score Health bdf_state < HealthThreshold bdf_state run function bdf:transition/to_1