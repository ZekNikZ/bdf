tag @e[tag=bdf_needs_swap,sort=random,limit=1] add bdf_swapping
tp @e[tag=bdf_swapping] @e[tag=bdf_swap_target,sort=random,limit=1]
execute as @a[tag=bdf_swapping] at @s run kill @e[tag=bdf_swap_target,sort=nearest,limit=1]
tag @a[tag=bdf_swapping] remove bdf_needs_swap
tag @a[tag=bdf_swapping] remove bdf_swapping

execute if entity @e[tag=bdf_needs_swap] run function bdf:stages/events/helpers/swap_player