execute if score NextState bdf_state matches 0 run function bdf:state/0_setup
execute if score NextState bdf_state matches 1 run function bdf:state/1_setup
execute if score NextState bdf_state matches 2 run function bdf:state/2_setup
execute if score NextState bdf_state matches 3 run function bdf:state/3_setup

scoreboard players operation State bdf_state = NextState bdf_state