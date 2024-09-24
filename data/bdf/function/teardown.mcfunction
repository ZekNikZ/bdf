tellraw @p[team=bdf] ["",{"text":"[Better Dragon Fight] ","color":"light_purple"},"Tearing down dragon fight..."]

# Teardown state
function bdf:transition/helpers/teardown_current

# Teams
team remove bdf_dragon
team remove bdf_champion

# Remove beacons if they are still around
execute as @e[tag=bdf_crystal_marker] at @s run setblock ~ ~-2 ~ minecraft:bedrock

# Grant loot
execute if score Level bdf_state matches 0 store result score LootAmount bdf_math run random value 0..99 bdf:loot
execute if score Level bdf_state matches 1 store result score LootAmount bdf_math run random value 24..99 bdf:loot
execute if score Level bdf_state matches 2 store result score LootAmount bdf_math run random value 50..50 bdf:loot
execute if score Level bdf_state matches 3 store result score LootAmount bdf_math run random value 50..149 bdf:loot
execute if score Level bdf_state matches 4 store result score LootAmount bdf_math run random value 100..100 bdf:loot
execute if score Level bdf_state matches 5 store result score LootAmount bdf_math run random value 100..199 bdf:loot
scoreboard players operation LootAmount bdf_math /= #50 bdf_math
scoreboard players operation @p[predicate=bdf:in_the_end] bdf_loot = LootAmount bdf_math
execute as @a[predicate=bdf:in_the_end] at @s run function bdf:helpers/grant_loot

# Create dragon egg
execute in minecraft:the_end run summon minecraft:marker 0 256 0 {Tags:["bdf_cleanup","bdf_dragon_egg"]}
execute as @e[tag=bdf_dragon_egg] at @s run function bdf:helpers/find_topmost_block
execute as @e[tag=bdf_dragon_egg] at @s run setblock ~ ~ ~ minecraft:dragon_egg

# Kill markers
kill @e[tag=bdf_cleanup]

# Objectives
scoreboard objectives remove bdf_math
scoreboard objectives remove bdf_minions
scoreboard objectives remove bdf_loot

# Gamerules
gamerule universalAnger false
gamerule forgiveDeadPlayers true

# Bossbars
bossbar remove bdf:shield
bossbar remove bdf:target_1
bossbar remove bdf:target_2
bossbar remove bdf:target_3
bossbar remove bdf:target_4
bossbar remove bdf:target_5
bossbar remove bdf:target_6

# Stop tearing down
scoreboard players set Active bdf_state 0
scoreboard players set Shield bdf_state 0
tag @e[type=minecraft:ender_dragon,tag=!bdf_teardown] add bdf_teardown

tellraw @p[team=bdf] ["",{"text":"[Better Dragon Fight] ","color":"light_purple"},"Dragon fight cleaned up."]