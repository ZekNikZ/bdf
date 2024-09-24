# Reset pillar
fill ~-5 ~-1 ~-5 ~5 ~25 ~5 air replace #bdf:pillar_cleanup

# Make pillar taller
execute if score Level bdf_state matches 2..3 run clone ~-5 ~-6 ~-5 ~5 ~-2 ~5 ~-5 ~-1 ~-5 replace
execute if score Level bdf_state matches 4..5 run clone ~-5 ~-11 ~-5 ~5 ~-2 ~5 ~-5 ~-1 ~-5 replace

# Move crystal (summon and kill instead of TP to prevent client desync)
execute if score Level bdf_state matches 0..1 run summon minecraft:end_crystal ~ ~ ~ {ShowBottom:1b,Tags:["bdf_cleanup","bdf_crystal","bdf_crystal_to_setup"]}
execute if score Level bdf_state matches 2..3 run summon minecraft:end_crystal ~ ~5 ~ {ShowBottom:1b,Tags:["bdf_cleanup","bdf_crystal","bdf_crystal_to_setup"]}
execute if score Level bdf_state matches 4..5 run summon minecraft:end_crystal ~ ~10 ~ {ShowBottom:1b,Tags:["bdf_cleanup","bdf_crystal","bdf_crystal_to_setup"]}
kill @s

# Setup new crystal
execute as @e[tag=bdf_crystal_to_setup] at @s run function bdf:setup/setup_crystal_2
