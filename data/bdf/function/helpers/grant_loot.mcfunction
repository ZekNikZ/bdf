execute if score @s bdf_loot matches 0 run return 0

tellraw @s "TODO: LOOT"
scoreboard players remove @s bdf_loot 1

execute if score @s bdf_loot matches 1.. run function bdf:helpers/grant_loot