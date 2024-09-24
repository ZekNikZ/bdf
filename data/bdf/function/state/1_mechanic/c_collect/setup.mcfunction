# Boss bars
bossbar set bdf:shield name "Shield Shards"
bossbar set bdf:shield color blue
bossbar set bdf:shield max 20
bossbar set bdf:shield style notched_20

# Setup mobs
scoreboard players reset * bdf_minions

# Spawn shards
summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_shard_spawner","bdf_cleanup"]}
summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_shard_spawner","bdf_cleanup"]}
summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_shard_spawner","bdf_cleanup"]}
summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_shard_spawner","bdf_cleanup"]}
summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_shard_spawner","bdf_cleanup"]}
summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_shard_spawner","bdf_cleanup"]}
execute if score Level bdf_state matches 3.. run summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_shard_spawner","bdf_cleanup"]}
execute if score Level bdf_state matches 3.. run summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_shard_spawner","bdf_cleanup"]}
execute if score Level bdf_state matches 3.. run summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_shard_spawner","bdf_cleanup"]}
execute if score Level bdf_state matches 3.. run summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_shard_spawner","bdf_cleanup"]}

# Setup bossbar
scoreboard players set #shard_count bdf_minions 0
execute as @e[tag=bdf_shard_spawner] run scoreboard players add #shard_count bdf_minions 2
execute store result bossbar bdf:shield max run scoreboard players get #shard_count bdf_minions
execute if score #shard_count bdf_minions matches ..19 run bossbar set bdf:shield style notched_12
execute if score #shard_count bdf_minions matches 20.. run bossbar set bdf:shield style notched_20
bossbar set bdf:shield players

# Spawn floating shards
spreadplayers 0 0 40 55 under 70 false @e[tag=bdf_shard_spawner]
execute as @e[tag=bdf_shard_spawner] at @s positioned ~ ~15 ~ run function bdf:state/1_mechanic/c_collect/spawn_shard

# Spawn ground shards
spreadplayers 0 0 50 70 under 70 false @e[tag=bdf_shard_spawner]
execute as @e[tag=bdf_shard_spawner] at @s positioned ~ ~1 ~ run function bdf:state/1_mechanic/c_collect/spawn_shard

# Spawn mobs
execute if score enemy_type bdf_state matches 0 as @e[tag=bdf_shard_spawner,sort=random,limit=6] at @s run function bdf:state/1_mechanic/spawn/undead/large
execute if score enemy_type bdf_state matches 0 positioned 0 100 0 in minecraft:the_end run function bdf:state/1_mechanic/spawn/undead/large
execute if score enemy_type bdf_state matches 1 as @e[tag=bdf_shard_spawner,sort=random,limit=6] at @s run function bdf:state/1_mechanic/spawn/nether/large
execute if score enemy_type bdf_state matches 1 positioned 0 100 0 in minecraft:the_end run function bdf:state/1_mechanic/spawn/nether/large
execute if score enemy_type bdf_state matches 2 as @e[tag=bdf_shard_spawner,sort=random,limit=6] at @s run function bdf:state/1_mechanic/spawn/illagers/large
execute if score enemy_type bdf_state matches 2 positioned 0 100 0 in minecraft:the_end run function bdf:state/1_mechanic/spawn/illagers/large

kill @e[tag=bdf_shard_spawner]

tellraw @a[predicate=bdf:in_the_end] {"text":"The dragon put up a shield! Collect shield shards to break it!","color":"gold","italic":true}