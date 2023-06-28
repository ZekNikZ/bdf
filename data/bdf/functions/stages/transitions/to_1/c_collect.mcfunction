# Boss bars
bossbar set bdf:shield name "Shield Shards"
bossbar set bdf:shield color blue
bossbar set bdf:shield max 20
bossbar set bdf:shield style notched_20

# Summon mobs
scoreboard players reset * bdf_minions
scoreboard players set #next_hotspot bdf_minions 1

# Spawn shards
summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_shard_spawner"]}
summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_shard_spawner"]}
summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_shard_spawner"]}
summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_shard_spawner"]}
summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_shard_spawner"]}
summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_shard_spawner"]}
summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_shard_spawner"]}
summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_shard_spawner"]}
summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_shard_spawner"]}
summon minecraft:armor_stand 0 70 0 {Marker:1b,Tags:["bdf_shard_spawner"]}

# Spawn floating shards
spreadplayers 0 0 40 55 under 70 false @e[tag=bdf_shard_spawner]
execute as @e[tag=bdf_shard_spawner] at @s positioned ~ ~15 ~ run function bdf:helpers/spawn_shard

# Spawn ground shards
spreadplayers 0 0 50 70 under 70 false @e[tag=bdf_shard_spawner]
execute as @e[tag=bdf_shard_spawner] at @s positioned ~ ~1 ~ run function bdf:helpers/spawn_shard

# Spawn adds
execute if score enemy_type bdf_state matches 0 as @e[tag=bdf_shard_spawner,sort=random,limit=6] at @s run function bdf:helpers/spawn/undead/large
execute if score enemy_type bdf_state matches 0 positioned 0 100 0 in minecraft:the_end run function bdf:helpers/spawn/undead/large
execute if score enemy_type bdf_state matches 1 as @e[tag=bdf_shard_spawner,sort=random,limit=6] at @s run function bdf:helpers/spawn/nether/large
execute if score enemy_type bdf_state matches 1 positioned 0 100 0 in minecraft:the_end run function bdf:helpers/spawn/nether/large
execute if score enemy_type bdf_state matches 2 as @e[tag=bdf_shard_spawner,sort=random,limit=6] at @s run function bdf:helpers/spawn/illagers/large
execute if score enemy_type bdf_state matches 2 positioned 0 100 0 in minecraft:the_end run function bdf:helpers/spawn/illagers/large

kill @e[tag=bdf_shard_spawner]

tellraw @a[predicate=bdf:in_the_end] {"text":"The dragon put up a shield! Collect shield shards to break it!","color":"gold","italic":true}