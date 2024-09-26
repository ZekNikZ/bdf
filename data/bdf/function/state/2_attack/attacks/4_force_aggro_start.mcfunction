tag @a[predicate=bdf:in_the_end] add bdf_needs_swap
execute as @e[tag=bdf_needs_swap] at @s run summon minecraft:marker ^ ^ ^ {Tags:["bdf_swap_target"]}
execute as @a[tag=bdf_needs_swap] at @s run tp @n[tag=bdf_swap_target] @s
execute as @a[predicate=bdf:in_the_end] at @s run playsound minecraft:entity.witch.celebrate voice @a ~ ~ ~ 1 0.7

function bdf:state/2_attack/attacks/4_force_aggro