# Bedrock
setblock ~ ~-1 ~ minecraft:bedrock

# Marker
summon minecraft:marker ~ ~ ~ {Tags:["bdf_cleanup","bdf_crystal_marker"]}

# Add iron bars
execute store result score crystal_iron_percentage bdf_math run random value 1..100 bdf:crystals

execute if score Level bdf_state matches 0 if score crystal_iron_percentage bdf_math matches 1..50 run function bdf:setup/add_iron_bars
execute if score Level bdf_state matches 1 if score crystal_iron_percentage bdf_math matches 1..75 run function bdf:setup/add_iron_bars
execute if score Level bdf_state matches 2..5 if score crystal_iron_percentage bdf_math matches 1..100 run function bdf:setup/add_iron_bars

# Add crying obsidian
execute store result score crystal_cry_percentage bdf_math run random value 1..100 bdf:crystals

execute if score Level bdf_state matches 0..2 if score crystal_iron_percentage bdf_math matches 0 run function bdf:setup/add_crying_obsidian
execute if score Level bdf_state matches 3..4 if score crystal_iron_percentage bdf_math matches 1..25 run function bdf:setup/add_crying_obsidian
execute if score Level bdf_state matches 5 if score crystal_iron_percentage bdf_math matches 1..50 run function bdf:setup/add_crying_obsidian

# Setup beacon
setblock ~ ~-2 ~ minecraft:beacon
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 minecraft:iron_block

tag @s remove bdf_crystal_to_setup