execute if entity @e[tag=bdf_crystal_not_present] as @e[tag=bdf_crystal_not_present,limit=1,sort=random] at @s run function bdf:helpers/respawn_crystal

scoreboard players remove respawn_crystals bdf_state 1
execute if score respawn_crystals bdf_state matches 1.. run schedule function bdf:helpers/respawn_random_crystal 2s