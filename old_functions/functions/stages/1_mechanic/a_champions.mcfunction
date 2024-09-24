# Only allow dragon to fly and charge players
execute unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:0}] unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:1}] as @e[type=minecraft:ender_dragon] run data merge entity @s {DragonPhase:0}

# Bossbar visibility
bossbar set bdf:shield players @a[predicate=bdf:in_the_end]
execute at @e[tag=bdf_champion,scores={bdf_minions=1}] run bossbar set bdf:target_1 players @a[distance=..10]
execute at @e[tag=bdf_champion,scores={bdf_minions=2}] run bossbar set bdf:target_2 players @a[distance=..10]
execute at @e[tag=bdf_champion,scores={bdf_minions=3}] run bossbar set bdf:target_3 players @a[distance=..10]
execute at @e[tag=bdf_champion,scores={bdf_minions=4}] run bossbar set bdf:target_4 players @a[distance=..10]
execute at @e[tag=bdf_champion,scores={bdf_minions=5}] run bossbar set bdf:target_5 players @a[distance=..10]
execute at @e[tag=bdf_champion,scores={bdf_minions=6}] run bossbar set bdf:target_6 players @a[distance=..10]
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=1}] run bossbar set bdf:target_1 players
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=2}] run bossbar set bdf:target_2 players
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=3}] run bossbar set bdf:target_3 players
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=4}] run bossbar set bdf:target_4 players
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=5}] run bossbar set bdf:target_5 players
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=6}] run bossbar set bdf:target_6 players

# Bossbar values
execute as @e[tag=bdf_champion,scores={bdf_minions=1}] store result bossbar bdf:target_1 value run data get entity @s Health
execute as @e[tag=bdf_champion,scores={bdf_minions=2}] store result bossbar bdf:target_2 value run data get entity @s Health
execute as @e[tag=bdf_champion,scores={bdf_minions=3}] store result bossbar bdf:target_3 value run data get entity @s Health
execute as @e[tag=bdf_champion,scores={bdf_minions=4}] store result bossbar bdf:target_4 value run data get entity @s Health
execute as @e[tag=bdf_champion,scores={bdf_minions=5}] store result bossbar bdf:target_5 value run data get entity @s Health
execute as @e[tag=bdf_champion,scores={bdf_minions=6}] store result bossbar bdf:target_6 value run data get entity @s Health

# Kill effects
tp @e[tag=bdf_champion_marker,scores={bdf_minions=1}] @e[tag=bdf_champion,scores={bdf_minions=1},limit=1]
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=1},limit=1] as @e[tag=bdf_champion_marker,scores={bdf_minions=1}] at @s run function bdf:helpers/spawn_firework
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=1},limit=1] as @e[tag=bdf_champion_marker,scores={bdf_minions=1}] at @s run function bdf:helpers/play_success_sound
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=1},limit=1] as @e[tag=bdf_champion_marker,scores={bdf_minions=1}] at @s run kill @s
tp @e[tag=bdf_champion_marker,scores={bdf_minions=2}] @e[tag=bdf_champion,scores={bdf_minions=2},limit=1]
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=2},limit=1] as @e[tag=bdf_champion_marker,scores={bdf_minions=2}] at @s run function bdf:helpers/spawn_firework
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=2},limit=1] as @e[tag=bdf_champion_marker,scores={bdf_minions=2}] at @s run function bdf:helpers/play_success_sound
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=2},limit=1] as @e[tag=bdf_champion_marker,scores={bdf_minions=2}] at @s run kill @s
tp @e[tag=bdf_champion_marker,scores={bdf_minions=3}] @e[tag=bdf_champion,scores={bdf_minions=3},limit=1]
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=3},limit=1] as @e[tag=bdf_champion_marker,scores={bdf_minions=3}] at @s run function bdf:helpers/spawn_firework
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=3},limit=1] as @e[tag=bdf_champion_marker,scores={bdf_minions=3}] at @s run function bdf:helpers/play_success_sound
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=3},limit=1] as @e[tag=bdf_champion_marker,scores={bdf_minions=3}] at @s run kill @s
tp @e[tag=bdf_champion_marker,scores={bdf_minions=4}] @e[tag=bdf_champion,scores={bdf_minions=4},limit=1]
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=4},limit=1] as @e[tag=bdf_champion_marker,scores={bdf_minions=4}] at @s run function bdf:helpers/spawn_firework
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=4},limit=1] as @e[tag=bdf_champion_marker,scores={bdf_minions=4}] at @s run function bdf:helpers/play_success_sound
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=4},limit=1] as @e[tag=bdf_champion_marker,scores={bdf_minions=4}] at @s run kill @s
tp @e[tag=bdf_champion_marker,scores={bdf_minions=5}] @e[tag=bdf_champion,scores={bdf_minions=5},limit=1]
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=5},limit=1] as @e[tag=bdf_champion_marker,scores={bdf_minions=5}] at @s run function bdf:helpers/spawn_firework
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=5},limit=1] as @e[tag=bdf_champion_marker,scores={bdf_minions=5}] at @s run function bdf:helpers/play_success_sound
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=5},limit=1] as @e[tag=bdf_champion_marker,scores={bdf_minions=5}] at @s run kill @s
tp @e[tag=bdf_champion_marker,scores={bdf_minions=6}] @e[tag=bdf_champion,scores={bdf_minions=6},limit=1]
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=6},limit=1] as @e[tag=bdf_champion_marker,scores={bdf_minions=6}] at @s run function bdf:helpers/spawn_firework
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=6},limit=1] as @e[tag=bdf_champion_marker,scores={bdf_minions=6}] at @s run function bdf:helpers/play_success_sound
execute unless entity @e[tag=bdf_champion,scores={bdf_minions=6},limit=1] as @e[tag=bdf_champion_marker,scores={bdf_minions=6}] at @s run kill @s

# Objective
title @a[predicate=bdf:in_the_end] actionbar ["",{"color":"gold","text":"Objective: "},{"color":"aqua","text":"defeat the dragon's champions"}]

scoreboard players set #num_champions bdf_minions 0
execute as @e[tag=bdf_champion] run scoreboard players add #num_champions bdf_minions 1
scoreboard players operation shield_health bdf_state = #num_champions bdf_minions