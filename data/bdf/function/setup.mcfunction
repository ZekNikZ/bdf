tellraw @p[team=bdf] ["",{"text":"[Better Dragon Fight] ","color":"light_purple"},"Setting up dragon fight..."]

# Load chunks
execute in minecraft:the_end run forceload add -200 -200 200 200

# Create objectives
scoreboard objectives add bdf_math dummy
scoreboard objectives add bdf_minions dummy
scoreboard objectives add bdf_loot dummy
scoreboard objectives add bdf_attacks dummy

# Create teams
team add bdf_dragon
team modify bdf_dragon color aqua
team add bdf_champion
team modify bdf_champion color dark_purple

# Set game state
scoreboard players set Active bdf_state 1
scoreboard players set State bdf_state -1
scoreboard players set Shield bdf_state 0

# Constants
scoreboard players set #2 bdf_math 2
scoreboard players set #3 bdf_math 3
scoreboard players set #4 bdf_math 4
scoreboard players set #50 bdf_math 50

# Determine fight level
scoreboard players set MaxBadOmen bdf_math 0
execute as @a[predicate=bdf:in_the_end] run function bdf:setup/check_bad_omen_level
scoreboard players operation Level bdf_state = MaxBadOmen bdf_math
effect clear @a[tag=bdf_bad_omen_provider] minecraft:bad_omen
tag @a[tag=bdf_bad_omen_provider] remove bdf_bad_omen_provider

# Setup crystals
execute as @e[type=end_crystal,tag=!bdf_crystal] at @s run function bdf:setup/setup_crystal

# Gamerules
gamerule universalAnger true
gamerule forgiveDeadPlayers false

# Modify dragon health
function bdf:helpers/count_players
scoreboard players set DragonHealth bdf_math 50
scoreboard players operation DragonHealth bdf_math *= Level bdf_state
scoreboard players add DragonHealth bdf_math 200
scoreboard players operation DragonHealth bdf_math *= NumPlayers bdf_math
scoreboard players operation MaxHealth bdf_state = DragonHealth bdf_math
execute store result storage bdf:state MaxHealth int 1 run scoreboard players get DragonHealth bdf_math
function bdf:helpers/change_dragon_max_health with storage bdf:state

# Compute when to respawn crystals
execute if score Level bdf_state matches 0..1 run scoreboard players operation #CrystalRespawn1 bdf_state = MaxHealth bdf_state
execute if score Level bdf_state matches 0..1 run scoreboard players operation #CrystalRespawn1 bdf_state /= #2 bdf_math
execute if score Level bdf_state matches 0..1 run scoreboard players set #CrystalRespawn2 bdf_state -1
execute if score Level bdf_state matches 0..1 run scoreboard players set #CrystalRespawn3 bdf_state -1

execute if score Level bdf_state matches 2..3 run scoreboard players operation #CrystalRespawn1 bdf_state = MaxHealth bdf_state
execute if score Level bdf_state matches 2..3 run scoreboard players operation #CrystalRespawn1 bdf_state *= #2 bdf_math
execute if score Level bdf_state matches 2..3 run scoreboard players operation #CrystalRespawn1 bdf_state /= #3 bdf_math
execute if score Level bdf_state matches 2..3 run scoreboard players operation #CrystalRespawn2 bdf_state = MaxHealth bdf_state
execute if score Level bdf_state matches 2..3 run scoreboard players operation #CrystalRespawn2 bdf_state /= #3 bdf_math
execute if score Level bdf_state matches 2..3 run scoreboard players set #CrystalRespawn3 bdf_state -1

execute if score Level bdf_state matches 4..5 run scoreboard players operation #CrystalRespawn1 bdf_state = MaxHealth bdf_state
execute if score Level bdf_state matches 4..5 run scoreboard players operation #CrystalRespawn1 bdf_state *= #3 bdf_math
execute if score Level bdf_state matches 4..5 run scoreboard players operation #CrystalRespawn1 bdf_state /= #4 bdf_math
execute if score Level bdf_state matches 4..5 run scoreboard players operation #CrystalRespawn2 bdf_state = MaxHealth bdf_state
execute if score Level bdf_state matches 4..5 run scoreboard players operation #CrystalRespawn2 bdf_state /= #2 bdf_math
execute if score Level bdf_state matches 4..5 run scoreboard players operation #CrystalRespawn3 bdf_state = MaxHealth bdf_state
execute if score Level bdf_state matches 4..5 run scoreboard players operation #CrystalRespawn3 bdf_state /= #4 bdf_math

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

# Start fight
function bdf:transition/to_0

tellraw @p[team=bdf] ["",{"text":"[Better Dragon Fight] ","color":"light_purple"},"Dragon fight initialized."]