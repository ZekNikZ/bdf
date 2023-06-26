scoreboard players set fight_state bdf_state 1

schedule clear bdf:stages/transitions/to_1

function bdf:helpers/enable_shield

# Choose mechanic
function bdf:randomizer/next_random
scoreboard players operation mechanic_type bdf_state = value bdf_randomizer
scoreboard players operation mechanic_type bdf_state %= #3 bdf_constants

# Choose enemy
function bdf:randomizer/next_random
scoreboard players operation enemy_type bdf_state = value bdf_randomizer
# scoreboard players operation enemy_type bdf_state %= #3 bdf_constants
scoreboard players operation enemy_type bdf_state %= #1 bdf_constants

# Respawn a crystal
function bdf:helpers/respawn_random_crystal

# Mechanic setup
execute if score mechanic_type bdf_state matches 0 in minecraft:the_end run function bdf:stages/transitions/to_1/a_champions
execute if score mechanic_type bdf_state matches 1 in minecraft:the_end run function bdf:stages/transitions/to_1/b_capture
execute if score mechanic_type bdf_state matches 2 in minecraft:the_end run function bdf:stages/transitions/to_1/c_collect