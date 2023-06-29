# Only allow dragon to fly and charge players
execute unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:0}] unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:1}] unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:8}] as @e[type=minecraft:ender_dragon] run data merge entity @s {DragonPhase:0}

# State-dependent actions
execute if score mechanic_type bdf_state matches 0 run function bdf:stages/2_attack/a_fireball

# Detect transition
execute unless entity @e[tag=bdf_crystal] run function bdf:stages/transitions/to_3
function bdf:stages/transitions/helpers/detect_too_much_damage