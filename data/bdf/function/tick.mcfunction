# Setup
execute if entity @e[type=minecraft:ender_dragon] if entity @e[type=minecraft:end_crystal,tag=!bdf_crystal] unless score Active bdf_state matches 1 run function bdf:setup

# Teardown
execute as @e[type=minecraft:ender_dragon,nbt={DragonPhase:9},tag=!bdf_teardown] run function bdf:teardown
execute if score Active bdf_state matches 1 unless entity @e[type=minecraft:ender_dragon] run function bdf:teardown

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

# Loot
# execute as @e[type=minecraft:item,nbt=!{Item:{tag:{display:{Name:'[{"text":"Dragon\'s Bounty","italic":false,"color":"light_purple"}]'}}}},nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjRjYWJlYzE4Mzk0ZjQ4MTkxNTI2ZDkwNTllNDU4ZTAxMTZmZTg0Yjc5YzY0NWNhNTQ2NDkzNzdiNjhmNTQzYiJ9fX0="}]}}}}}] at @s run loot spawn ~ ~ ~ loot bdf:custom/dragon_loot
# execute as @e[type=minecraft:item,nbt=!{Item:{tag:{display:{Name:'[{"text":"Dragon\'s Bounty","italic":false,"color":"light_purple"}]'}}}},nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjRjYWJlYzE4Mzk0ZjQ4MTkxNTI2ZDkwNTllNDU4ZTAxMTZmZTg0Yjc5YzY0NWNhNTQ2NDkzNzdiNjhmNTQzYiJ9fX0="}]}}}}}] at @s run kill @s