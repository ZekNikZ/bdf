scoreboard players set fight_state bdf_state 2

schedule clear bdf:stages/transitions/to_2
schedule clear bdf:stages/events/spawn_more_mobs

# Remove bossbar
bossbar set bdf:shield players

# Remove shield
function bdf:helpers/disable_shield

tellraw @a[predicate=bdf:in_the_end] {"text":"The dragon is vulnerable! Now is your chance!","color":"gold","italic":true}

# Choose mechanic
function bdf:stages/transitions/helpers/select_next_attack
scoreboard players operation last_attack_type bdf_state = mechanic_type bdf_state

# Schedule events
execute if score mechanic_type bdf_state matches 0 as @a[predicate=bdf:in_the_end] at @s run playsound minecraft:entity.witch.celebrate voice @a ~ ~ ~ 1 0.7
execute if score mechanic_type bdf_state matches 0 run tellraw @a[predicate=bdf:in_the_end] {"text":"Roar! You'll have to be quick on your feet to dodge my fireballs!","color": "light_purple","italic": true}
execute if score mechanic_type bdf_state matches 0 run schedule function bdf:stages/events/fireball 10s
execute if score mechanic_type bdf_state matches 1 run schedule function bdf:stages/events/lightning 5s
execute if score mechanic_type bdf_state matches 2 in minecraft:the_end positioned 0 70 30 run function bdf:helpers/spawn/undead/large
execute if score mechanic_type bdf_state matches 2 in minecraft:the_end positioned -20 70 -25 run function bdf:helpers/spawn/nether/large
execute if score mechanic_type bdf_state matches 2 in minecraft:the_end positioned 20 70 -25 run function bdf:helpers/spawn/illagers/large
execute if score mechanic_type bdf_state matches 2 run schedule function bdf:stages/events/player_swap 5s

# Respawn 3 crystals
# scoreboard players set respawn_crystals bdf_state 3
# function bdf:helpers/respawn_random_crystal

# Automatically go to stage 3 if the crystals aren't destroyed
schedule function bdf:stages/transitions/to_3 60s

schedule function bdf:stages/transitions/to_1 100s

scoreboard players operation min_dragon_health bdf_state = dragon_health bdf_state
scoreboard players operation min_dragon_health bdf_state -= #256 bdf_constants