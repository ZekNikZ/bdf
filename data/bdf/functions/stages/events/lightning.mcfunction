tellraw @a[predicate=bdf:in_the_end] {"text":"Roar! Dance my little lightning rods!","color": "light_purple","italic": true}

execute as @a[predicate=bdf:in_the_end] at @s run summon minecraft:marker ~ ~ ~ {Tags:["bdf_lightning"]}

schedule function bdf:stages/events/helpers/spawn_lightning 2s

schedule function bdf:stages/events/lightning 25s