# Boss bars
bossbar set bdf:shield name "Shield Hotspots"
bossbar set bdf:shield color blue
bossbar set bdf:shield max 6
bossbar set bdf:shield style notched_6

bossbar set bdf:target_1 name "Hotspot Capture Progress"
bossbar set bdf:target_2 name "Hotspot Capture Progress"
bossbar set bdf:target_3 name "Hotspot Capture Progress"
bossbar set bdf:target_4 name "Hotspot Capture Progress"
bossbar set bdf:target_5 name "Hotspot Capture Progress"
bossbar set bdf:target_6 name "Hotspot Capture Progress"

bossbar set bdf:target_1 max 600
bossbar set bdf:target_2 max 600
bossbar set bdf:target_3 max 600
bossbar set bdf:target_4 max 600
bossbar set bdf:target_5 max 600
bossbar set bdf:target_6 max 600

bossbar set bdf:target_1 value 0
bossbar set bdf:target_2 value 0
bossbar set bdf:target_3 value 0
bossbar set bdf:target_4 value 0
bossbar set bdf:target_5 value 0
bossbar set bdf:target_6 value 0

bossbar set bdf:target_1 color red
bossbar set bdf:target_2 color red
bossbar set bdf:target_3 color red
bossbar set bdf:target_4 color red
bossbar set bdf:target_5 color red
bossbar set bdf:target_6 color red

# Setup mobs
scoreboard players reset * bdf_minions
scoreboard players set #next_hotspot bdf_minions 1

summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_hotspot","bdf_cleanup","bdf_objective"],Invisible:1b}
summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_hotspot","bdf_cleanup","bdf_objective"],Invisible:1b}
summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_hotspot","bdf_cleanup","bdf_objective"],Invisible:1b}
execute if score Level bdf_state matches 1.. run summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_hotspot","bdf_cleanup","bdf_objective"],Invisible:1b}
execute if score Level bdf_state matches 2.. run summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_hotspot","bdf_cleanup","bdf_objective"],Invisible:1b}
execute if score Level bdf_state matches 4.. run summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_hotspot","bdf_cleanup","bdf_objective"],Invisible:1b}

spreadplayers 0 0 45 60 under 70 false @e[tag=bdf_hotspot]

# Setup bossbar
scoreboard players set #hotspot_count bdf_minions 0
execute as @e[tag=bdf_hotspot] run scoreboard players add #hotspot_count bdf_minions 1
execute store result bossbar bdf:shield max run scoreboard players get #hotspot_count bdf_minions
execute if score #shard_count bdf_minions matches 4 run bossbar set bdf:shield style notched_12
execute if score #shard_count bdf_minions matches 5 run bossbar set bdf:shield style notched_10
bossbar set bdf:shield players

# Spawn hotspots
execute as @e[tag=bdf_hotspot] at @s run function bdf:state/1_mechanic/b_capture/assign_hotspot

# Spawn mobs
execute if score Enemy bdf_state matches 0 as @e[tag=bdf_hotspot] at @s run function bdf:state/1_mechanic/spawn/undead/small
execute if score Enemy bdf_state matches 0 positioned 0 100 0 in minecraft:the_end run function bdf:state/1_mechanic/spawn/undead/large
execute if score Enemy bdf_state matches 1 as @e[tag=bdf_hotspot] at @s run function bdf:state/1_mechanic/spawn/nether/small
execute if score Enemy bdf_state matches 1 positioned 0 100 0 in minecraft:the_end run function bdf:state/1_mechanic/spawn/nether/large
execute if score Enemy bdf_state matches 2 as @e[tag=bdf_hotspot] at @s run function bdf:state/1_mechanic/spawn/illagers/small
execute if score Enemy bdf_state matches 2 positioned 0 100 0 in minecraft:the_end run function bdf:state/1_mechanic/spawn/illagers/large

# Scoreboards
scoreboard players set #objective_1 bdf_minions 0
scoreboard players set #objective_2 bdf_minions 0
scoreboard players set #objective_3 bdf_minions 0
scoreboard players set #objective_4 bdf_minions 0
scoreboard players set #objective_5 bdf_minions 0
scoreboard players set #objective_6 bdf_minions 0

tellraw @a[predicate=bdf:in_the_end] {"text":"The dragon put up a shield! Capture shield hotspots to break it!","color":"gold","italic":true}