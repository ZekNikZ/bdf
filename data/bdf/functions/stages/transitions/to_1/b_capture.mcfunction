# Only allow dragon to fly and charge players
execute unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:0}] unless entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:1}] run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:0}

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

bossbar set bdf:target_1 value 600
bossbar set bdf:target_2 value 600
bossbar set bdf:target_3 value 600
bossbar set bdf:target_4 value 600
bossbar set bdf:target_5 value 600
bossbar set bdf:target_6 value 600

bossbar set bdf:target_1 color red
bossbar set bdf:target_2 color red
bossbar set bdf:target_3 color red
bossbar set bdf:target_4 color red
bossbar set bdf:target_5 color red
bossbar set bdf:target_6 color red

# Summon mobs
scoreboard players reset * bdf_minions
scoreboard players set #next_hotspot bdf_minions 1

summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_hotspot"],Invisible:1b}
summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_hotspot"],Invisible:1b}
summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_hotspot"],Invisible:1b}
summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_hotspot"],Invisible:1b}
summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_hotspot"],Invisible:1b}
summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_hotspot"],Invisible:1b}

spreadplayers 0 0 80 80 under 70 false @e[tag=bdf_hotspot]

# Spawn champions
execute as @e[tag=bdf_hotspot] at @s run function bdf:stages/helpers/assign_hotspot

# Spawn adds
execute if score enemy_type bdf_state matches 0 as @e[tag=bdf_hotspot] at @s run function bdf:stages/helpers/mobs/spawn_undead
execute if score enemy_type bdf_state matches 0 positioned 0 100 0 in minecraft:the_end run function bdf:stages/helpers/mobs/spawn_undead

# Scoreboards
scoreboard players set #objective_1 bdf_minions 0
scoreboard players set #objective_2 bdf_minions 0
scoreboard players set #objective_3 bdf_minions 0
scoreboard players set #objective_4 bdf_minions 0
scoreboard players set #objective_5 bdf_minions 0
scoreboard players set #objective_6 bdf_minions 0