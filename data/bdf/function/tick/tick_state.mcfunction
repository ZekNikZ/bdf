execute unless score State bdf_state = NextState bdf_state run function bdf:transition/helpers/teardown_current
execute unless score State bdf_state = NextState bdf_state run function bdf:transition/helpers/setup_next

execute if score State bdf_state matches 0 run function bdf:state/0_initial/tick
execute if score State bdf_state matches 1 run function bdf:state/1_mechanic/tick
execute if score State bdf_state matches 2 run function bdf:state/2_attack/tick
execute if score State bdf_state matches 3 run function bdf:state/3_perch/tick
