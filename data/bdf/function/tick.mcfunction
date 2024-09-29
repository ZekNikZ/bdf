# Setup
execute if entity @e[type=minecraft:ender_dragon] if entity @e[type=minecraft:end_crystal,tag=!bdf_crystal] unless score Active bdf_state matches 1 run function bdf:setup

# Teardown
execute as @e[type=minecraft:ender_dragon,nbt={DragonPhase:9},tag=!bdf_teardown] run function bdf:teardown
execute in minecraft:the_end if score Active bdf_state matches 1 unless entity @e[type=minecraft:ender_dragon] run function bdf:teardown

# Shield
execute if score Shield bdf_state matches 1 run function bdf:tick/tick_shield

# Crystal beacons
execute if score Active bdf_state matches 1 run function bdf:tick/tick_beacons

# State-dependent functions
execute if score Active bdf_state matches 1 run function bdf:tick/tick_state

# Item loss prevention
execute if score Active bdf_state matches 1 run function bdf:tick/tick_item_loss_prevention

# Misc
execute if score Active bdf_state matches 1 store result score Health bdf_state run data get entity @e[type=minecraft:ender_dragon,limit=1] Health

# Respawn crystals at the right times
execute if score Active bdf_state matches 1 if score Health bdf_state <= #CrystalRespawn1 bdf_state run function bdf:helpers/respawn_random_crystal
execute if score Active bdf_state matches 1 if score Health bdf_state <= #CrystalRespawn1 bdf_state run schedule function bdf:helpers/respawn_random_crystal 5s
execute if score Active bdf_state matches 1 if score Health bdf_state <= #CrystalRespawn1 bdf_state run scoreboard players set #CrystalRespawn1 bdf_state -1

execute if score Active bdf_state matches 1 if score Health bdf_state <= #CrystalRespawn2 bdf_state run function bdf:helpers/respawn_random_crystal
execute if score Active bdf_state matches 1 if score Health bdf_state <= #CrystalRespawn2 bdf_state run schedule function bdf:helpers/respawn_random_crystal 5s
execute if score Active bdf_state matches 1 if score Health bdf_state <= #CrystalRespawn2 bdf_state run scoreboard players set #CrystalRespawn2 bdf_state -1

execute if score Active bdf_state matches 1 if score Health bdf_state <= #CrystalRespawn3 bdf_state run function bdf:helpers/respawn_random_crystal
execute if score Active bdf_state matches 1 if score Health bdf_state <= #CrystalRespawn3 bdf_state run schedule function bdf:helpers/respawn_random_crystal 5s
execute if score Active bdf_state matches 1 if score Health bdf_state <= #CrystalRespawn3 bdf_state run scoreboard players set #CrystalRespawn3 bdf_state -1