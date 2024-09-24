scoreboard players set fight_state bdf_state 1

schedule clear bdf:stages/transitions/to_1
schedule clear bdf:stages/transitions/to_3
schedule clear bdf:stages/events/fireball
schedule clear bdf:stages/events/lightning
schedule clear bdf:stages/events/spawn_more_mobs
schedule clear bdf:stages/events/player_swap

function bdf:helpers/enable_shield

scoreboard players set @a[predicate=bdf:in_the_end] ch_toggleCons -1

# Choose mechanic
function bdf:stages/transitions/helpers/select_next_mechanic
scoreboard players operation last_mechanic_type bdf_state = mechanic_type bdf_state

# Choose enemy
function bdf:stages/transitions/helpers/select_next_enemy_type
scoreboard players operation last_enemy_type bdf_state = enemy_type bdf_state

# Mechanic setup
execute if score mechanic_type bdf_state matches 0 in minecraft:the_end run function bdf:stages/transitions/to_1/a_champions
execute if score mechanic_type bdf_state matches 1 in minecraft:the_end run function bdf:stages/transitions/to_1/b_capture
execute if score mechanic_type bdf_state matches 2 in minecraft:the_end run function bdf:stages/transitions/to_1/c_collect

# Respawn a crystal
function bdf:helpers/respawn_random_crystal