# Teleport
tag @e[tag=bdf_needs_swap,sort=random,limit=1] add bdf_swapping
tp @e[tag=bdf_swapping] @e[tag=bdf_swap_target,sort=random,limit=1]
execute as @a[tag=bdf_swapping] at @s run kill @e[tag=bdf_swap_target,sort=nearest,limit=1]
execute as @a[tag=bdf_swapping] at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 1 0.5

# Force enderman aggro
execute as @p[tag=bdf_swapping] at @s run tag @n[type=enderman] add bdf_swap_aggro
execute as @e[tag=bdf_swap_aggro] run data modify entity @s AngryAt set from entity @p[tag=bdf_swapping] UUID
execute as @e[tag=bdf_swap_aggro] run data modify entity @s AngerTime set value 400

# Cleanup
tag @a[tag=bdf_swapping] remove bdf_needs_swap
tag @a[tag=bdf_swapping] remove bdf_swapping

execute if entity @e[tag=bdf_needs_swap] run function bdf:state/2_attack/attacks/4_force_aggro