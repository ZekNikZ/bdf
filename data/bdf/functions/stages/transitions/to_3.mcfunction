scoreboard players set fight_state bdf_state 3

schedule clear bdf:stages/transitions/to_3
schedule clear bdf:stages/events/fireball
schedule clear bdf:stages/events/lightning
schedule clear bdf:stages/events/spawn_more_mobs
schedule clear bdf:stages/events/player_swap

# Force dragon to perch
execute as @e[type=minecraft:ender_dragon] run data merge entity @s {DragonPhase:2}