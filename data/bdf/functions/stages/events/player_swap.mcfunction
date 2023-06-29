tellraw @a[predicate=bdf:in_the_end] {"text":"Roar! Enter the ethereal plane!","color": "light_purple","italic": true}
execute as @a[predicate=bdf:in_the_end] at @s run playsound minecraft:entity.witch.celebrate voice @a ~ ~ ~ 1 0.7

schedule function bdf:stages/events/helpers/start_swap_player 2s

schedule function bdf:stages/events/player_swap 25s