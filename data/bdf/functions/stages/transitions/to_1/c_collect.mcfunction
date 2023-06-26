# Only allow dragon to fly and charge players
execute unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:0}] unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:1}] as @e[type=minecraft:ender_dragon] run data merge entity @s {DragonPhase:0}

# Boss bars
bossbar set bdf:shield name "Shield Shards"
bossbar set bdf:shield color blue
bossbar set bdf:shield max 10
bossbar set bdf:shield style notched_10

# Summon mobs
scoreboard players reset * bdf_minions
scoreboard players set #next_hotspot bdf_minions 1

summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_shard_spawner"]}
summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_shard_spawner"]}
summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_shard_spawner"]}
summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_shard_spawner"]}
summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_shard_spawner"]}
summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_shard_spawner"]}
summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_shard_spawner"]}
summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_shard_spawner"]}
summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_shard_spawner"]}
summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_shard_spawner"]}

spreadplayers 0 0 40 55 under 70 false @e[tag=bdf_shard_spawner]

# Spawn shards
execute as @e[tag=bdf_shard_spawner] at @s positioned ~ ~15 ~ run function bdf:helpers/spawn_shard

# Spawn adds
execute if score enemy_type bdf_state matches 0 as @e[tag=bdf_shard_spawner,sort=random,limit=2] at @s run function bdf:helpers/spawn/undead/large
execute if score enemy_type bdf_state matches 0 positioned 0 100 0 in minecraft:the_end run function bdf:helpers/spawn/undead/large

kill @e[tag=bdf_shard_spawner]