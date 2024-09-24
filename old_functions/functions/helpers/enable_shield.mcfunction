scoreboard players set shield bdf_state 1
execute as @e[type=minecraft:ender_dragon] run data merge entity @s {Glowing:1b}
team join bdf_dragon @e[type=minecraft:ender_dragon]