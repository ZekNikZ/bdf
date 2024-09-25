tellraw @a[predicate=bdf:in_the_end] {"text":"Roar! You'll have to be quick on your feet to dodge my fireballs!","color": "light_purple","italic": true}

scoreboard players set Fireballs bdf_attacks 3

schedule function bdf:state/2_attack/attacks/1_fireball 3s