# Boss bars
bossbar set bdf:shield name "Shield Protectors"
bossbar set bdf:shield color blue
bossbar set bdf:shield max 6
bossbar set bdf:shield style notched_6

bossbar set bdf:target_1 name "Dragon's Champion"
bossbar set bdf:target_2 name "Dragon's Champion"
bossbar set bdf:target_3 name "Dragon's Champion"
bossbar set bdf:target_4 name "Dragon's Champion"
bossbar set bdf:target_5 name "Dragon's Champion"
bossbar set bdf:target_6 name "Dragon's Champion"

bossbar set bdf:target_1 max 80
bossbar set bdf:target_2 max 80
bossbar set bdf:target_3 max 80
bossbar set bdf:target_4 max 80
bossbar set bdf:target_5 max 80
bossbar set bdf:target_6 max 80

bossbar set bdf:target_1 value 80
bossbar set bdf:target_2 value 80
bossbar set bdf:target_3 value 80
bossbar set bdf:target_4 value 80
bossbar set bdf:target_5 value 80
bossbar set bdf:target_6 value 80

bossbar set bdf:target_1 color purple
bossbar set bdf:target_2 color purple
bossbar set bdf:target_3 color purple
bossbar set bdf:target_4 color purple
bossbar set bdf:target_5 color purple
bossbar set bdf:target_6 color purple

# Setup mobs
scoreboard players reset * bdf_minions
scoreboard players set #next_champion bdf_minions 1

summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_spawn_helper","bdf_cleanup"]}
summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_spawn_helper","bdf_cleanup"]}
summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_spawn_helper","bdf_cleanup"]}
execute if score Level bdf_state matches 1.. run summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_spawn_helper","bdf_cleanup"]}
execute if score Level bdf_state matches 2.. run summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_spawn_helper","bdf_cleanup"]}
execute if score Level bdf_state matches 4.. run summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_spawn_helper","bdf_cleanup"]}

spreadplayers 0 0 45 60 under 70 false @e[tag=bdf_spawn_helper]

# Spawn champions
execute if score Enemy bdf_state matches 0 as @e[tag=bdf_spawn_helper] at @s run function bdf:state/1_mechanic/spawn/undead/champion
execute if score Enemy bdf_state matches 1 as @e[tag=bdf_spawn_helper] at @s run function bdf:state/1_mechanic/spawn/nether/champion
execute if score Enemy bdf_state matches 2 as @e[tag=bdf_spawn_helper] at @s run function bdf:state/1_mechanic/spawn/illagers/champion

# Setup bossbar
scoreboard players set #champion_count bdf_minions 0
execute as @e[tag=bdf_champion] run scoreboard players add #champion_count bdf_minions 1
execute store result bossbar bdf:shield max run scoreboard players get #champion_count bdf_minions
execute if score #shard_count bdf_minions matches 4 run bossbar set bdf:shield style notched_12
execute if score #shard_count bdf_minions matches 5 run bossbar set bdf:shield style notched_10
bossbar set bdf:shield players

# Spawn adds
execute if score Enemy bdf_state matches 0 as @e[tag=bdf_spawn_helper] at @s run function bdf:state/1_mechanic/spawn/undead/small
execute if score Enemy bdf_state matches 0 positioned 0 100 0 in minecraft:the_end run function bdf:state/1_mechanic/spawn/undead/large
execute if score Enemy bdf_state matches 1 as @e[tag=bdf_spawn_helper] at @s run function bdf:state/1_mechanic/spawn/nether/small
execute if score Enemy bdf_state matches 1 positioned 0 100 0 in minecraft:the_end run function bdf:state/1_mechanic/spawn/nether/large
execute if score Enemy bdf_state matches 2 as @e[tag=bdf_spawn_helper] at @s run function bdf:state/1_mechanic/spawn/illagers/small
execute if score Enemy bdf_state matches 2 positioned 0 100 0 in minecraft:the_end run function bdf:state/1_mechanic/spawn/illagers/large

kill @e[tag=bdf_spawn_helper]

tellraw @a[predicate=bdf:in_the_end] {"text":"The dragon put up a shield! Defeat the shield protectors to break it!","color":"gold","italic":true}

# Disable coordinates HUD
scoreboard players set @a[predicate=bdf:in_the_end] ch_toggleCons -1