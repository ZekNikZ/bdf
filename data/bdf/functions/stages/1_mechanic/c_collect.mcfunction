# Bossbar visibility
bossbar set bdf:shield players @a[predicate=bdf:in_the_end]

# Objective
title @a[predicate=bdf:in_the_end] actionbar ["",{"color":"gold","text":"Objective: "},{"color":"aqua","text":"collect the shield shards"}]

scoreboard players set #num_shards bdf_minions 0
execute as @e[tag=bdf_shard] run scoreboard players add #num_shards bdf_minions 1
scoreboard players operation shield_health bdf_state = #num_shards bdf_minions

# Check for collections
execute as @e[tag=bdf_shard] at @s if entity @p[distance=..2] run function bdf:helpers/spawn_firework
execute as @e[tag=bdf_shard] at @s if entity @p[distance=..2] run function bdf:helpers/play_success_sound
execute as @e[tag=bdf_shard] at @s if entity @p[distance=..2] run kill @s

execute if score #objective_1 bdf_minions matches 600.. as @e[tag=bdf_hotspot,scores={bdf_minions=1}] at @s run function bdf:helpers/spawn_firework
execute if score #objective_1 bdf_minions matches 600.. as @e[tag=bdf_hotspot,scores={bdf_minions=1}] at @s run function bdf:helpers/play_success_sound
execute if score #objective_1 bdf_minions matches 600.. as @e[tag=bdf_hotspot,scores={bdf_minions=1}] run kill @s
execute if score #objective_1 bdf_minions matches 600.. as @e[tag=bdf_hotspot_display,scores={bdf_minions=1}] run kill @s
execute if score #objective_2 bdf_minions matches 600.. as @e[tag=bdf_hotspot,scores={bdf_minions=2}] at @s run function bdf:helpers/spawn_firework
execute if score #objective_2 bdf_minions matches 600.. as @e[tag=bdf_hotspot,scores={bdf_minions=2}] at @s run function bdf:helpers/play_success_sound
execute if score #objective_2 bdf_minions matches 600.. as @e[tag=bdf_hotspot,scores={bdf_minions=2}] run kill @s
execute if score #objective_2 bdf_minions matches 600.. as @e[tag=bdf_hotspot_display,scores={bdf_minions=2}] run kill @s
execute if score #objective_3 bdf_minions matches 600.. as @e[tag=bdf_hotspot,scores={bdf_minions=3}] at @s run function bdf:helpers/spawn_firework
execute if score #objective_3 bdf_minions matches 600.. as @e[tag=bdf_hotspot,scores={bdf_minions=3}] at @s run function bdf:helpers/play_success_sound
execute if score #objective_3 bdf_minions matches 600.. as @e[tag=bdf_hotspot,scores={bdf_minions=3}] run kill @s
execute if score #objective_3 bdf_minions matches 600.. as @e[tag=bdf_hotspot_display,scores={bdf_minions=3}] run kill @s
execute if score #objective_4 bdf_minions matches 600.. as @e[tag=bdf_hotspot,scores={bdf_minions=4}] at @s run function bdf:helpers/spawn_firework
execute if score #objective_4 bdf_minions matches 600.. as @e[tag=bdf_hotspot,scores={bdf_minions=4}] at @s run function bdf:helpers/play_success_sound
execute if score #objective_4 bdf_minions matches 600.. as @e[tag=bdf_hotspot,scores={bdf_minions=4}] run kill @s
execute if score #objective_4 bdf_minions matches 600.. as @e[tag=bdf_hotspot_display,scores={bdf_minions=4}] run kill @s
execute if score #objective_5 bdf_minions matches 600.. as @e[tag=bdf_hotspot,scores={bdf_minions=5}] at @s run function bdf:helpers/spawn_firework
execute if score #objective_5 bdf_minions matches 600.. as @e[tag=bdf_hotspot,scores={bdf_minions=5}] at @s run function bdf:helpers/play_success_sound
execute if score #objective_5 bdf_minions matches 600.. as @e[tag=bdf_hotspot,scores={bdf_minions=5}] run kill @s
execute if score #objective_5 bdf_minions matches 600.. as @e[tag=bdf_hotspot_display,scores={bdf_minions=5}] run kill @s
execute if score #objective_6 bdf_minions matches 600.. as @e[tag=bdf_hotspot,scores={bdf_minions=6}] at @s run function bdf:helpers/spawn_firework
execute if score #objective_6 bdf_minions matches 600.. as @e[tag=bdf_hotspot,scores={bdf_minions=6}] at @s run function bdf:helpers/play_success_sound
execute if score #objective_6 bdf_minions matches 600.. as @e[tag=bdf_hotspot,scores={bdf_minions=6}] run kill @s
execute if score #objective_6 bdf_minions matches 600.. as @e[tag=bdf_hotspot_display,scores={bdf_minions=6}] run kill @s