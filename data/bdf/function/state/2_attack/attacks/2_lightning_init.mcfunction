tellraw @a[predicate=bdf:in_the_end] {"text":"Don't stand still my little lightning rods!","color": "light_purple","italic": true}

execute as @a[predicate=bdf:in_the_end] at @s run summon minecraft:marker ~ ~ ~ {Tags:["bdf_lightning","bdf_cleanup"]}

schedule function bdf:state/2_attack/attacks/2_lightning 3s