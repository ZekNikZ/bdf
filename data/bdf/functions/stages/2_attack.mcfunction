# Only allow dragon to fly and charge players
execute unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:0}] unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:1}] unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:8}] run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:0}

# State-dependent actions

# Detect transition
execute unless entity @e[tag=bdf_crystal] run function bdf:stages/transitions/to_3