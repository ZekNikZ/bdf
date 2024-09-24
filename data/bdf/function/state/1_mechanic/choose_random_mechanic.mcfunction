execute store result score Mechanic bdf_state run random value 0..2 bdf:mechanic
execute if score Mechanic bdf_state = LastMechanic bdf_state run function bdf:state/1_mechanic/choose_random_mechanic