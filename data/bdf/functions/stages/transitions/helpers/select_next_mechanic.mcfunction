function bdf:randomizer/next_random
scoreboard players operation mechanic_type bdf_state = value bdf_randomizer
scoreboard players operation mechanic_type bdf_state %= #3 bdf_constants

execute if score mechanic_type bdf_state = last_mechanic_type bdf_state run function bdf:stages/transitions/helpers/select_next_mechanic