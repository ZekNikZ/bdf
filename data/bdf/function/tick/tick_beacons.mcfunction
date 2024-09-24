# Determine which crystals are present
execute as @e[tag=bdf_crystal_marker,tag=!bdf_crystal_not_present] at @s unless entity @e[tag=bdf_crystal,distance=..5] run tag @s add bdf_crystal_not_present
execute as @e[tag=bdf_crystal_marker,tag=bdf_crystal_not_present] at @s if entity @e[tag=bdf_crystal,distance=..5] run tag @s remove bdf_crystal_not_present

# Handle crystal beacons
execute as @e[tag=bdf_crystal_marker,tag=!bdf_crystal_not_present] at @s unless block ~ ~-2 ~ minecraft:beacon run setblock ~ ~-2 ~ minecraft:beacon
execute as @e[tag=bdf_crystal_marker,tag=bdf_crystal_not_present] at @s if block ~ ~-2 ~ minecraft:beacon run setblock ~ ~-2 ~ minecraft:bedrock
