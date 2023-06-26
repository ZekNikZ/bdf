# Determine which crystals are present
execute as @e[tag=bdf_crystal_marker,tag=!bdf_crystal_not_present] at @s unless entity @e[tag=bdf_crystal,distance=..5] run tag @s add bdf_crystal_not_present
execute as @e[tag=bdf_crystal_marker,tag=bdf_crystal_not_present] at @s if entity @e[tag=bdf_crystal,distance=..5] run tag @s remove bdf_crystal_not_present

# Handle crystal beacons
execute as @e[tag=bdf_crystal_marker,tag=!bdf_crystal_not_present] at @s unless block ~ ~-2 ~ minecraft:beacon run setblock ~ ~-2 ~ minecraft:beacon
execute as @e[tag=bdf_crystal_marker,tag=bdf_crystal_not_present] at @s if block ~ ~-2 ~ minecraft:beacon run setblock ~ ~-2 ~ minecraft:bedrock

# State-dependent functions
execute if score fight_state bdf_state matches 0 run function bdf:stages/0_initial
execute if score fight_state bdf_state matches 1 run function bdf:stages/1_mechanic
execute if score fight_state bdf_state matches 2 run function bdf:stages/2_attack
execute if score fight_state bdf_state matches 3 run function bdf:stages/3_defend

# Shield
execute if score shield bdf_state matches 1 run function bdf:helpers/tick_shield