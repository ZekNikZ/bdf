tag @a[predicate=bdf:in_the_end] add bdf_needs_swap
execute as @e[tag=bdf_needs_swap] at @s run summon minecraft:marker ~ ~ ~ {Tags:["bdf_swap_target"]}

function bdf:stages/events/helpers/swap_player