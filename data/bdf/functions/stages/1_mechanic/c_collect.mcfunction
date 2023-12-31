# Only allow dragon to fly and charge players
execute unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:0}] unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:1}] unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:8}] as @e[type=minecraft:ender_dragon] run data merge entity @s {DragonPhase:0}

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
execute if score enemy_type bdf_state matches 0 if score #num_shards bdf_minions matches 15 as @e[tag=bdf_shard] at @s if entity @p[distance=..2] positioned 0 100 0 in minecraft:the_end run function bdf:helpers/spawn/illagers/large
execute if score enemy_type bdf_state matches 0 if score #num_shards bdf_minions matches 10 as @e[tag=bdf_shard] at @s if entity @p[distance=..2] positioned 0 100 0 in minecraft:the_end run function bdf:helpers/spawn/illagers/large
execute if score enemy_type bdf_state matches 0 if score #num_shards bdf_minions matches 5 as @e[tag=bdf_shard] at @s if entity @p[distance=..2] positioned 0 100 0 in minecraft:the_end run function bdf:helpers/spawn/illagers/large
execute if score enemy_type bdf_state matches 1 if score #num_shards bdf_minions matches 15 as @e[tag=bdf_shard] at @s if entity @p[distance=..2] positioned 0 100 0 in minecraft:the_end run function bdf:helpers/spawn/illagers/large
execute if score enemy_type bdf_state matches 1 if score #num_shards bdf_minions matches 10 as @e[tag=bdf_shard] at @s if entity @p[distance=..2] positioned 0 100 0 in minecraft:the_end run function bdf:helpers/spawn/illagers/large
execute if score enemy_type bdf_state matches 1 if score #num_shards bdf_minions matches 5 as @e[tag=bdf_shard] at @s if entity @p[distance=..2] positioned 0 100 0 in minecraft:the_end run function bdf:helpers/spawn/illagers/large
execute if score enemy_type bdf_state matches 2 if score #num_shards bdf_minions matches 15 as @e[tag=bdf_shard] at @s if entity @p[distance=..2] positioned 0 100 0 in minecraft:the_end run function bdf:helpers/spawn/illagers/large
execute if score enemy_type bdf_state matches 2 if score #num_shards bdf_minions matches 10 as @e[tag=bdf_shard] at @s if entity @p[distance=..2] positioned 0 100 0 in minecraft:the_end run function bdf:helpers/spawn/illagers/large
execute if score enemy_type bdf_state matches 2 if score #num_shards bdf_minions matches 5 as @e[tag=bdf_shard] at @s if entity @p[distance=..2] positioned 0 100 0 in minecraft:the_end run function bdf:helpers/spawn/illagers/large
execute as @e[tag=bdf_shard] at @s if entity @p[distance=..2] run kill @s