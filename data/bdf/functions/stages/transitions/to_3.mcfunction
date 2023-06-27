scoreboard players set fight_state bdf_state 3

schedule clear bdf:stages/transitions/to_3
schedule clear bdf:stages/events/fireball

# Force dragon to perch
execute as @e[type=minecraft:ender_dragon] run data merge entity @s {DragonPhase:2}

schedule function bdf:stages/transitions/to_1 30s