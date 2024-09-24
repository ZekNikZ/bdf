# Tick mechanic
execute if score Mechanic bdf_state matches 0 in minecraft:the_end run function bdf:state/1_mechanic/a_champions/tick
execute if score Mechanic bdf_state matches 1 in minecraft:the_end run function bdf:state/1_mechanic/b_capture/tick
execute if score Mechanic bdf_state matches 2 in minecraft:the_end run function bdf:state/1_mechanic/c_collect/tick

# Update bossbar
execute store result bossbar bdf:shield value run scoreboard players get ShieldHealth bdf_state

# Detect transition
execute if score ShieldHealth bdf_state matches ..0 run function bdf:transition/to_2