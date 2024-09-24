execute store result score Enemy bdf_state run random value 0..2 bdf:enemy
execute if score Enemy bdf_state = LastEnemy bdf_state run function bdf:state/1_mechanic/choose_random_enemy