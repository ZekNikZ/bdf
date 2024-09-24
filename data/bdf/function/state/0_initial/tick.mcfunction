# Force keep flying
execute unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:0}] unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:1}] as @e[type=minecraft:ender_dragon] run data merge entity @s {DragonPhase:0}

# TODO: If all crystals are destroyed, force next phase