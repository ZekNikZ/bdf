execute if score State bdf_state matches 0 run function bdf:state/0_initial/teardown
execute if score State bdf_state matches 1 run function bdf:state/1_mechanic/teardown
execute if score State bdf_state matches 2 run function bdf:state/2_attack/teardown
execute if score State bdf_state matches 3 run function bdf:state/3_perch/teardown

schedule clear bdf:transition/to_0
schedule clear bdf:transition/to_1
schedule clear bdf:transition/to_2
schedule clear bdf:transition/to_3