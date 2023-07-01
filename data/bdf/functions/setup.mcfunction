# Constants
function bdf:helpers/setup_constants

# Controller armor stand
kill @e[tag=bdf_controller]
execute in minecraft:the_end run setblock 100 200 0 minecraft:bedrock
execute in minecraft:the_end run summon minecraft:armor_stand 100 201 0 {Invisible:1b,Marker:1b,Tags:["bdf_controller","bdf_active"]}

# Move crystals
execute as @e[type=end_crystal,tag=!bdf_crystal] at @s run function bdf:setup/move_crystals

# Cleanup crying obsidian
fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:air replace minecraft:crying_obsidian

# Add iron bars
execute as @e[type=end_crystal,tag=bdf_crystal] at @s run function bdf:setup/add_iron_bars

# Add crying obsidian
# execute as @e[type=end_crystal,tag=bdf_crystal,sort=random,limit=3] at @s run function bdf:setup/add_crying_obsidian

# Add crystal markers
execute as @e[type=end_crystal,tag=bdf_crystal] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["bdf_crystal_marker"]}

# Setup beacons
execute as @e[tag=bdf_crystal_marker] at @s run setblock ~ ~-2 ~ minecraft:beacon
execute as @e[tag=bdf_crystal_marker] at @s run fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 minecraft:iron_block

# Modify dragon health
attribute @e[type=minecraft:ender_dragon,limit=1] minecraft:generic.max_health base set 2000
data merge entity @e[type=ender_dragon,limit=1] {Health:2000}
attribute @e[type=minecraft:ender_dragon,limit=1] minecraft:generic.armor base set 12

# Gamerules
gamerule universalAnger true
gamerule forgiveDeadPlayers false

# Bossbars
bossbar add bdf:shield "Shield"
bossbar set bdf:shield color blue
bossbar set bdf:shield style notched_6

bossbar add bdf:target_1 "Target 1"
bossbar set bdf:target_1 color purple

bossbar add bdf:target_2 "Target 2"
bossbar set bdf:target_2 color purple

bossbar add bdf:target_3 "Target 3"
bossbar set bdf:target_3 color purple

bossbar add bdf:target_4 "Target 4"
bossbar set bdf:target_4 color purple

bossbar add bdf:target_5 "Target 5"
bossbar set bdf:target_5 color purple

bossbar add bdf:target_6 "Target 6"
bossbar set bdf:target_6 color purple

# Game state
scoreboard objectives add bdf_state dummy
scoreboard players set fight_state bdf_state 0
scoreboard players set shield bdf_state 0

# Misc
function bdf:randomizer/setup
scoreboard objectives add bdf_minions dummy
team add bdf_dragon
team modify bdf_dragon color aqua
team add bdf_champion
team modify bdf_champion color dark_purple

function bdf:stages/transitions/to_0

tellraw ZekNikZ ["",{"text":"[Better Dragon Fight] ","color":"light_purple"},"Dragon fight initialized."]