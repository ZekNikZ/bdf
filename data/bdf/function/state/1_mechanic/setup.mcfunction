function bdf:helpers/enable_shield

# Choose mechanic
scoreboard players operation LastMechanic bdf_state = Mechanic bdf_state
function bdf:state/1_mechanic/choose_random_mechanic

# Choose enemy
scoreboard players operation LastEnemy bdf_state = Enemy bdf_state
function bdf:state/1_mechanic/choose_random_enemy

# Setup mechanic
execute if score Mechanic bdf_state matches 0 in minecraft:the_end run function bdf:state/1_mechanic/a_champions/setup
execute if score Mechanic bdf_state matches 1 in minecraft:the_end run function bdf:state/1_mechanic/b_capture/setup
execute if score Mechanic bdf_state matches 2 in minecraft:the_end run function bdf:state/1_mechanic/c_collect/setup