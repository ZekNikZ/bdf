execute as @e[type=minecraft:ender_dragon,limit=1] at @s run function bdf:state/2_attack/attacks/helpers/spawn_fireball

scoreboard players remove Fireballs bdf_attacks 1
execute if score Fireballs bdf_attacks matches 1.. run schedule function bdf:state/2_attack/attacks/1_fireball 3s