# Only allow dragon to fly and charge players
execute unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:2}] unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:3}] unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:5}] unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:6}] unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:7}] as @e[type=minecraft:ender_dragon,limit=1] run data merge entity @s {DragonPhase:2}

# State-dependent actions