# Bossbar visibility
bossbar set bdf:shield players @a[predicate=bdf:in_the_end]
execute at @e[tag=bdf_hotspot,scores={bdf_minions=1}] run bossbar set bdf:target_1 players @a[distance=..10]
execute at @e[tag=bdf_hotspot,scores={bdf_minions=2}] run bossbar set bdf:target_2 players @a[distance=..10]
execute at @e[tag=bdf_hotspot,scores={bdf_minions=3}] run bossbar set bdf:target_3 players @a[distance=..10]
execute at @e[tag=bdf_hotspot,scores={bdf_minions=4}] run bossbar set bdf:target_4 players @a[distance=..10]
execute at @e[tag=bdf_hotspot,scores={bdf_minions=5}] run bossbar set bdf:target_5 players @a[distance=..10]
execute at @e[tag=bdf_hotspot,scores={bdf_minions=6}] run bossbar set bdf:target_6 players @a[distance=..10]
execute unless entity @e[tag=bdf_hotspot,scores={bdf_minions=1}] run bossbar set bdf:target_1 players
execute unless entity @e[tag=bdf_hotspot,scores={bdf_minions=2}] run bossbar set bdf:target_2 players
execute unless entity @e[tag=bdf_hotspot,scores={bdf_minions=3}] run bossbar set bdf:target_3 players
execute unless entity @e[tag=bdf_hotspot,scores={bdf_minions=4}] run bossbar set bdf:target_4 players
execute unless entity @e[tag=bdf_hotspot,scores={bdf_minions=5}] run bossbar set bdf:target_5 players
execute unless entity @e[tag=bdf_hotspot,scores={bdf_minions=6}] run bossbar set bdf:target_6 players

# Bossbar values
execute as @e[tag=bdf_hotspot,scores={bdf_minions=1}] store result bossbar bdf:target_1 value run scoreboard players get #objective_1 bdf_minions
execute as @e[tag=bdf_hotspot,scores={bdf_minions=2}] store result bossbar bdf:target_2 value run scoreboard players get #objective_2 bdf_minions
execute as @e[tag=bdf_hotspot,scores={bdf_minions=3}] store result bossbar bdf:target_3 value run scoreboard players get #objective_3 bdf_minions
execute as @e[tag=bdf_hotspot,scores={bdf_minions=4}] store result bossbar bdf:target_4 value run scoreboard players get #objective_4 bdf_minions
execute as @e[tag=bdf_hotspot,scores={bdf_minions=5}] store result bossbar bdf:target_5 value run scoreboard players get #objective_5 bdf_minions
execute as @e[tag=bdf_hotspot,scores={bdf_minions=6}] store result bossbar bdf:target_6 value run scoreboard players get #objective_6 bdf_minions

# Objective
title @a[predicate=bdf:in_the_end] actionbar ["",{"color":"gold","text":"Objective: "},{"color":"aqua","text":"capture the shield hotspots"}]

scoreboard players set #num_hotspots bdf_minions 0
execute as @e[tag=bdf_hotspot] run scoreboard players add #num_hotspots bdf_minions 1
scoreboard players operation shield_health bdf_state = #num_hotspots bdf_minions

# Visuals
execute as @e[tag=bdf_hotspot_display] at @s if entity @e[tag=bdf_minion,distance=..10] run data merge entity @s {block_state:{Name:"red_concrete"}}
execute as @e[tag=bdf_hotspot] at @s if entity @e[tag=bdf_minion,distance=..10] run particle minecraft:dust 1 0 0 10 ~ ~ ~ 3 0 3 0 2
execute as @e[tag=bdf_hotspot_display] at @s unless entity @e[tag=bdf_minion,distance=..10] if entity @p[distance=..5] run data merge entity @s {block_state:{Name:"lime_concrete"}}
execute as @e[tag=bdf_hotspot] at @s unless entity @e[tag=bdf_minion,distance=..10] if entity @p[distance=..5] run particle minecraft:dust 0 1 0 10 ~ ~ ~ 3 0 3 0 2
execute as @e[tag=bdf_hotspot_display] at @s unless entity @e[tag=bdf_minion,distance=..10] unless entity @p[distance=..5] run data merge entity @s {block_state:{Name:"yellow_concrete"}}
execute as @e[tag=bdf_hotspot] at @s unless entity @e[tag=bdf_minion,distance=..10] unless entity @p[distance=..5] run particle minecraft:dust 1 1 0 10 ~ ~ ~ 3 0 3 0 2

# Boss bar titles
execute as @e[tag=bdf_hotspot,scores={bdf_minions=1}] at @s if entity @e[tag=bdf_minion,distance=..10] run bossbar set bdf:target_1 name "Hotspot: progress blocked!"
execute as @e[tag=bdf_hotspot,scores={bdf_minions=2}] at @s if entity @e[tag=bdf_minion,distance=..10] run bossbar set bdf:target_2 name "Hotspot: progress blocked!"
execute as @e[tag=bdf_hotspot,scores={bdf_minions=3}] at @s if entity @e[tag=bdf_minion,distance=..10] run bossbar set bdf:target_3 name "Hotspot: progress blocked!"
execute as @e[tag=bdf_hotspot,scores={bdf_minions=4}] at @s if entity @e[tag=bdf_minion,distance=..10] run bossbar set bdf:target_4 name "Hotspot: progress blocked!"
execute as @e[tag=bdf_hotspot,scores={bdf_minions=5}] at @s if entity @e[tag=bdf_minion,distance=..10] run bossbar set bdf:target_5 name "Hotspot: progress blocked!"
execute as @e[tag=bdf_hotspot,scores={bdf_minions=6}] at @s if entity @e[tag=bdf_minion,distance=..10] run bossbar set bdf:target_6 name "Hotspot: progress blocked!"
execute as @e[tag=bdf_hotspot,scores={bdf_minions=1}] at @s unless entity @e[tag=bdf_minion,distance=..10] run bossbar set bdf:target_1 name "Hotspot Capture Progress"
execute as @e[tag=bdf_hotspot,scores={bdf_minions=2}] at @s unless entity @e[tag=bdf_minion,distance=..10] run bossbar set bdf:target_2 name "Hotspot Capture Progress"
execute as @e[tag=bdf_hotspot,scores={bdf_minions=3}] at @s unless entity @e[tag=bdf_minion,distance=..10] run bossbar set bdf:target_3 name "Hotspot Capture Progress"
execute as @e[tag=bdf_hotspot,scores={bdf_minions=4}] at @s unless entity @e[tag=bdf_minion,distance=..10] run bossbar set bdf:target_4 name "Hotspot Capture Progress"
execute as @e[tag=bdf_hotspot,scores={bdf_minions=5}] at @s unless entity @e[tag=bdf_minion,distance=..10] run bossbar set bdf:target_5 name "Hotspot Capture Progress"
execute as @e[tag=bdf_hotspot,scores={bdf_minions=6}] at @s unless entity @e[tag=bdf_minion,distance=..10] run bossbar set bdf:target_6 name "Hotspot Capture Progress"
execute as @e[tag=bdf_hotspot,scores={bdf_minions=1}] at @s if entity @e[tag=bdf_minion,distance=..10] run bossbar set bdf:target_1 color red
execute as @e[tag=bdf_hotspot,scores={bdf_minions=2}] at @s if entity @e[tag=bdf_minion,distance=..10] run bossbar set bdf:target_2 color red
execute as @e[tag=bdf_hotspot,scores={bdf_minions=3}] at @s if entity @e[tag=bdf_minion,distance=..10] run bossbar set bdf:target_3 color red
execute as @e[tag=bdf_hotspot,scores={bdf_minions=4}] at @s if entity @e[tag=bdf_minion,distance=..10] run bossbar set bdf:target_4 color red
execute as @e[tag=bdf_hotspot,scores={bdf_minions=5}] at @s if entity @e[tag=bdf_minion,distance=..10] run bossbar set bdf:target_5 color red
execute as @e[tag=bdf_hotspot,scores={bdf_minions=6}] at @s if entity @e[tag=bdf_minion,distance=..10] run bossbar set bdf:target_6 color red
execute as @e[tag=bdf_hotspot,scores={bdf_minions=1}] at @s unless entity @e[tag=bdf_minion,distance=..10] if entity @p[distance=..5] run bossbar set bdf:target_1 color green
execute as @e[tag=bdf_hotspot,scores={bdf_minions=2}] at @s unless entity @e[tag=bdf_minion,distance=..10] if entity @p[distance=..5] run bossbar set bdf:target_2 color green
execute as @e[tag=bdf_hotspot,scores={bdf_minions=3}] at @s unless entity @e[tag=bdf_minion,distance=..10] if entity @p[distance=..5] run bossbar set bdf:target_3 color green
execute as @e[tag=bdf_hotspot,scores={bdf_minions=4}] at @s unless entity @e[tag=bdf_minion,distance=..10] if entity @p[distance=..5] run bossbar set bdf:target_4 color green
execute as @e[tag=bdf_hotspot,scores={bdf_minions=5}] at @s unless entity @e[tag=bdf_minion,distance=..10] if entity @p[distance=..5] run bossbar set bdf:target_5 color green
execute as @e[tag=bdf_hotspot,scores={bdf_minions=6}] at @s unless entity @e[tag=bdf_minion,distance=..10] if entity @p[distance=..5] run bossbar set bdf:target_6 color green
execute as @e[tag=bdf_hotspot,scores={bdf_minions=1}] at @s unless entity @e[tag=bdf_minion,distance=..10] unless entity @p[distance=..5] run bossbar set bdf:target_1 color yellow
execute as @e[tag=bdf_hotspot,scores={bdf_minions=2}] at @s unless entity @e[tag=bdf_minion,distance=..10] unless entity @p[distance=..5] run bossbar set bdf:target_2 color yellow
execute as @e[tag=bdf_hotspot,scores={bdf_minions=3}] at @s unless entity @e[tag=bdf_minion,distance=..10] unless entity @p[distance=..5] run bossbar set bdf:target_3 color yellow
execute as @e[tag=bdf_hotspot,scores={bdf_minions=4}] at @s unless entity @e[tag=bdf_minion,distance=..10] unless entity @p[distance=..5] run bossbar set bdf:target_4 color yellow
execute as @e[tag=bdf_hotspot,scores={bdf_minions=5}] at @s unless entity @e[tag=bdf_minion,distance=..10] unless entity @p[distance=..5] run bossbar set bdf:target_5 color yellow
execute as @e[tag=bdf_hotspot,scores={bdf_minions=6}] at @s unless entity @e[tag=bdf_minion,distance=..10] unless entity @p[distance=..5] run bossbar set bdf:target_6 color yellow

# Compute progress
execute as @e[tag=bdf_hotspot,scores={bdf_minions=1}] at @s unless entity @e[tag=bdf_minion,distance=..10] as @a[distance=..5] run scoreboard players add #objective_1 bdf_minions 1
execute as @e[tag=bdf_hotspot,scores={bdf_minions=2}] at @s unless entity @e[tag=bdf_minion,distance=..10] as @a[distance=..5] run scoreboard players add #objective_2 bdf_minions 1
execute as @e[tag=bdf_hotspot,scores={bdf_minions=3}] at @s unless entity @e[tag=bdf_minion,distance=..10] as @a[distance=..5] run scoreboard players add #objective_3 bdf_minions 1
execute as @e[tag=bdf_hotspot,scores={bdf_minions=4}] at @s unless entity @e[tag=bdf_minion,distance=..10] as @a[distance=..5] run scoreboard players add #objective_4 bdf_minions 1
execute as @e[tag=bdf_hotspot,scores={bdf_minions=5}] at @s unless entity @e[tag=bdf_minion,distance=..10] as @a[distance=..5] run scoreboard players add #objective_5 bdf_minions 1
execute as @e[tag=bdf_hotspot,scores={bdf_minions=6}] at @s unless entity @e[tag=bdf_minion,distance=..10] as @a[distance=..5] run scoreboard players add #objective_6 bdf_minions 1

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

# Spawn more mobs
execute if score enemy_type bdf_state matches 0 if score #objective_1 bdf_minions matches 300.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_50p,scores={bdf_minions=1}] as @e[tag=bdf_hotspot,scores={bdf_minions=1}] at @s run function bdf:helpers/spawn/undead/away
execute if score enemy_type bdf_state matches 0 if score #objective_1 bdf_minions matches 300.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_50p,scores={bdf_minions=1}] as @e[tag=bdf_hotspot,scores={bdf_minions=1}] at @s run tag @s add bdf_hotspot_50p
execute if score enemy_type bdf_state matches 0 if score #objective_1 bdf_minions matches 510.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_85p,scores={bdf_minions=1}] as @e[tag=bdf_hotspot,scores={bdf_minions=1}] at @s run function bdf:helpers/spawn/undead/away
execute if score enemy_type bdf_state matches 0 if score #objective_1 bdf_minions matches 510.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_85p,scores={bdf_minions=1}] as @e[tag=bdf_hotspot,scores={bdf_minions=1}] at @s run tag @s add bdf_hotspot_85p
execute if score enemy_type bdf_state matches 0 if score #objective_2 bdf_minions matches 300.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_50p,scores={bdf_minions=2}] as @e[tag=bdf_hotspot,scores={bdf_minions=2}] at @s run function bdf:helpers/spawn/undead/away
execute if score enemy_type bdf_state matches 0 if score #objective_2 bdf_minions matches 300.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_50p,scores={bdf_minions=2}] as @e[tag=bdf_hotspot,scores={bdf_minions=2}] at @s run tag @s add bdf_hotspot_50p
execute if score enemy_type bdf_state matches 0 if score #objective_2 bdf_minions matches 510.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_85p,scores={bdf_minions=2}] as @e[tag=bdf_hotspot,scores={bdf_minions=2}] at @s run function bdf:helpers/spawn/undead/away
execute if score enemy_type bdf_state matches 0 if score #objective_2 bdf_minions matches 510.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_85p,scores={bdf_minions=2}] as @e[tag=bdf_hotspot,scores={bdf_minions=2}] at @s run tag @s add bdf_hotspot_85p
execute if score enemy_type bdf_state matches 0 if score #objective_3 bdf_minions matches 300.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_50p,scores={bdf_minions=3}] as @e[tag=bdf_hotspot,scores={bdf_minions=3}] at @s run function bdf:helpers/spawn/undead/away
execute if score enemy_type bdf_state matches 0 if score #objective_3 bdf_minions matches 300.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_50p,scores={bdf_minions=3}] as @e[tag=bdf_hotspot,scores={bdf_minions=3}] at @s run tag @s add bdf_hotspot_50p
execute if score enemy_type bdf_state matches 0 if score #objective_3 bdf_minions matches 510.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_85p,scores={bdf_minions=3}] as @e[tag=bdf_hotspot,scores={bdf_minions=3}] at @s run function bdf:helpers/spawn/undead/away
execute if score enemy_type bdf_state matches 0 if score #objective_3 bdf_minions matches 510.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_85p,scores={bdf_minions=3}] as @e[tag=bdf_hotspot,scores={bdf_minions=3}] at @s run tag @s add bdf_hotspot_85p
execute if score enemy_type bdf_state matches 0 if score #objective_4 bdf_minions matches 300.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_50p,scores={bdf_minions=4}] as @e[tag=bdf_hotspot,scores={bdf_minions=4}] at @s run function bdf:helpers/spawn/undead/away
execute if score enemy_type bdf_state matches 0 if score #objective_4 bdf_minions matches 300.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_50p,scores={bdf_minions=4}] as @e[tag=bdf_hotspot,scores={bdf_minions=4}] at @s run tag @s add bdf_hotspot_50p
execute if score enemy_type bdf_state matches 0 if score #objective_4 bdf_minions matches 510.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_85p,scores={bdf_minions=4}] as @e[tag=bdf_hotspot,scores={bdf_minions=4}] at @s run function bdf:helpers/spawn/undead/away
execute if score enemy_type bdf_state matches 0 if score #objective_4 bdf_minions matches 510.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_85p,scores={bdf_minions=4}] as @e[tag=bdf_hotspot,scores={bdf_minions=4}] at @s run tag @s add bdf_hotspot_85p
execute if score enemy_type bdf_state matches 0 if score #objective_5 bdf_minions matches 300.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_50p,scores={bdf_minions=5}] as @e[tag=bdf_hotspot,scores={bdf_minions=5}] at @s run function bdf:helpers/spawn/undead/away
execute if score enemy_type bdf_state matches 0 if score #objective_5 bdf_minions matches 300.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_50p,scores={bdf_minions=5}] as @e[tag=bdf_hotspot,scores={bdf_minions=5}] at @s run tag @s add bdf_hotspot_50p
execute if score enemy_type bdf_state matches 0 if score #objective_5 bdf_minions matches 510.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_85p,scores={bdf_minions=5}] as @e[tag=bdf_hotspot,scores={bdf_minions=5}] at @s run function bdf:helpers/spawn/undead/away
execute if score enemy_type bdf_state matches 0 if score #objective_5 bdf_minions matches 510.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_85p,scores={bdf_minions=5}] as @e[tag=bdf_hotspot,scores={bdf_minions=5}] at @s run tag @s add bdf_hotspot_85p
execute if score enemy_type bdf_state matches 0 if score #objective_6 bdf_minions matches 300.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_50p,scores={bdf_minions=6}] as @e[tag=bdf_hotspot,scores={bdf_minions=6}] at @s run function bdf:helpers/spawn/undead/away
execute if score enemy_type bdf_state matches 0 if score #objective_6 bdf_minions matches 300.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_50p,scores={bdf_minions=6}] as @e[tag=bdf_hotspot,scores={bdf_minions=6}] at @s run tag @s add bdf_hotspot_50p
execute if score enemy_type bdf_state matches 0 if score #objective_6 bdf_minions matches 510.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_85p,scores={bdf_minions=6}] as @e[tag=bdf_hotspot,scores={bdf_minions=6}] at @s run function bdf:helpers/spawn/undead/away
execute if score enemy_type bdf_state matches 0 if score #objective_6 bdf_minions matches 510.. unless entity @e[tag=bdf_hotspot,tag=bdf_hotspot_85p,scores={bdf_minions=6}] as @e[tag=bdf_hotspot,scores={bdf_minions=6}] at @s run tag @s add bdf_hotspot_85p