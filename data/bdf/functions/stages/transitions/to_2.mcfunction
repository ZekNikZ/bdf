scoreboard players set fight_state bdf_state 2

schedule clear bdf:stages/transitions/to_2
schedule clear bdf:stages/events/spawn_more_mobs

# Remove bossbar
bossbar set bdf:shield players

# Remove shield
function bdf:helpers/disable_shield

# Respawn 3 crystals
function bdf:helpers/respawn_random_crystal
function bdf:helpers/respawn_random_crystal
function bdf:helpers/respawn_random_crystal

# Automatically go to stage 3 if the crystals aren't destroyed
schedule function bdf:stages/transitions/to_3 60s