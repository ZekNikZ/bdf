execute if score enemy_type bdf_state matches 0 as @e[tag=bdf_champion] at @s run function bdf:helpers/spawn/undead/small
execute if score enemy_type bdf_state matches 0 positioned 0 100 0 in minecraft:the_end run function bdf:helpers/spawn/undead/large

schedule function bdf:stages/events/spawn_more_mobs 90s