# Force dragon to perch
execute as @e[type=minecraft:ender_dragon] run data merge entity @s {DragonPhase:2}

# Determine health threshold
scoreboard players operation ThirdOfHealth bdf_math = MaxHealth bdf_state
scoreboard players operation ThirdOfHealth bdf_math /= #3 bdf_math
scoreboard players operation HealthThreshold bdf_math = Health bdf_state
scoreboard players operation HealthThreshold bdf_math -= ThirdOfHealth bdf_math

schedule function bdf:transition/to_1 45s