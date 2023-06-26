# State-dependent actions
execute if score mechanic_type bdf_state matches 0 run function bdf:stages/1_mechanic/a_champions
execute if score mechanic_type bdf_state matches 1 run function bdf:stages/1_mechanic/b_capture

# Update bossbar
execute store result bossbar bdf:shield value run scoreboard players get shield_health bdf_state

# Detect transition
execute if score shield_health bdf_state matches 0 run function bdf:stages/transitions/to_2