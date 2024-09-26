# Only allow dragon to fly and charge players
execute unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:0}] unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:1}] unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:8}] as @e[type=minecraft:ender_dragon] run data merge entity @s {DragonPhase:0}

# Fire breath attack
execute if score FireBreath bdf_attacks matches 1.. as @e[type=minecraft:ender_dragon] at @s run summon minecraft:falling_block ~ ~-3 ~ {BlockState:{Name:"minecraft:fire"},Time:1}
execute if score FireBreath bdf_attacks matches 1.. as @e[type=minecraft:ender_dragon] at @s run summon minecraft:falling_block ~-1 ~-3 ~ {BlockState:{Name:"minecraft:fire"},Time:1}
execute if score FireBreath bdf_attacks matches 1.. as @e[type=minecraft:ender_dragon] at @s run summon minecraft:falling_block ~1 ~-3 ~ {BlockState:{Name:"minecraft:fire"},Time:1}
execute if score FireBreath bdf_attacks matches 1.. as @e[type=minecraft:ender_dragon] at @s run summon minecraft:falling_block ~ ~-3 ~-1 {BlockState:{Name:"minecraft:fire"},Time:1}
execute if score FireBreath bdf_attacks matches 1.. as @e[type=minecraft:ender_dragon] at @s run summon minecraft:falling_block ~ ~-3 ~1 {BlockState:{Name:"minecraft:fire"},Time:1}
execute if score FireBreath bdf_attacks matches 1.. run scoreboard players remove FireBreath bdf_attacks 1