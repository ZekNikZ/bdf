# Build attack pool
execute unless entity @e[tag=bdf_attack_option] run function bdf:state/2_attack/prepare_attacks

# Choose random attack
tag @e[tag=bdf_attack_option,limit=1,sort=random] add bdf_attack_selected
scoreboard players operation Attack bdf_state = @e[tag=bdf_attack_selected,limit=1] bdf_minions
kill @e[tag=bdf_attack_selected]

# Schedule attack
execute store result storage bdf:scheduler delay int 1 run random value 8..15 bdf:scheduler
function bdf:state/2_attack/schedule_attack with storage bdf:scheduler