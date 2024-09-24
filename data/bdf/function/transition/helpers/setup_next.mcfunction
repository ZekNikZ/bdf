execute if score NextState bdf_state matches 0 run function bdf:state/0_initial/setup
execute if score NextState bdf_state matches 1 run function bdf:state/1_mechanic/setup
execute if score NextState bdf_state matches 2 run function bdf:state/2_attack/setup
execute if score NextState bdf_state matches 3 run function bdf:state/3_perch/setup

scoreboard players operation State bdf_state = NextState bdf_state