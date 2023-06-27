scoreboard players set fight_state bdf_state 2

schedule clear bdf:stages/transitions/to_2
schedule clear bdf:stages/events/spawn_more_mobs

# Remove bossbar
bossbar set bdf:shield players

# Remove shield
function bdf:helpers/disable_shield

tellraw @a[predicate=bdf:in_the_end] {"text":"The dragon is vulnerable! Now is your chance!","color":"gold","italic":true}

# Choose mechanic
function bdf:randomizer/next_random
scoreboard players operation mechanic_type bdf_state = value bdf_randomizer
scoreboard players operation mechanic_type bdf_state %= #1 bdf_constants

# Respawn 3 crystals
scoreboard players set respawn_crystals bdf_state 3
function bdf:helpers/respawn_random_crystal

# Schedule events
execute if score mechanic_type bdf_state matches 0 run schedule function bdf:stages/events/fireball 10s

# Automatically go to stage 3 if the crystals aren't destroyed
schedule function bdf:stages/transitions/to_3 60s