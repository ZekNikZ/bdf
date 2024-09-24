function bdf:randomizer/next_random
scoreboard players operation enemy_type bdf_state = value bdf_randomizer
scoreboard players operation enemy_type bdf_state %= #3 bdf_constants

execute if score enemy_type bdf_state = last_enemy_type bdf_state run function bdf:stages/transitions/helpers/select_next_enemy_type