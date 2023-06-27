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

# Summon mobs
scoreboard players reset * bdf_minions
scoreboard players set #next_champion bdf_minions 1

summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_spawn_helper"]}
summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_spawn_helper"]}
summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_spawn_helper"]}
summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_spawn_helper"]}
summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_spawn_helper"]}
summon minecraft:armor_stand 0 100 0 {Marker:1b,Tags:["bdf_spawn_helper"]}

spreadplayers 0 0 45 50 under 70 false @e[tag=bdf_spawn_helper]

# Spawn champions
execute if score enemy_type bdf_state matches 0 as @e[tag=bdf_spawn_helper] at @s run function bdf:helpers/spawn/undead/champion

# Spawn adds
execute if score enemy_type bdf_state matches 0 as @e[tag=bdf_spawn_helper] at @s run function bdf:helpers/spawn/undead/small
execute if score enemy_type bdf_state matches 0 as @e[tag=bdf_spawn_helper] at @s run function bdf:helpers/spawn/undead/small
execute if score enemy_type bdf_state matches 0 positioned 0 100 0 in minecraft:the_end run function bdf:helpers/spawn/undead/large

kill @e[tag=bdf_spawn_helper]

tellraw @a[predicate=bdf:in_the_end] {"text":"The dragon put up a shield! Defeat the shield protectors to break it!","color":"gold","italic":true}