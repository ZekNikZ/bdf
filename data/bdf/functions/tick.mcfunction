# Setup
execute if entity @e[type=minecraft:ender_dragon] if entity @e[type=minecraft:end_crystal,tag=!bdf_crystal] unless entity @e[tag=bdf_controller,tag=bdf_active] run function bdf:setup

# Controller
execute as @e[type=minecraft:ender_dragon,nbt={DragonPhase:9},tag=!bdf_teardown] run function bdf:teardown
execute if entity @e[tag=bdf_controller,tag=bdf_active] unless entity @e[type=minecraft:ender_dragon,tag=!bdf_teardown] run function bdf:teardown
execute if entity @e[type=minecraft:ender_dragon] if entity @e[tag=bdf_controller,tag=bdf_active] run function bdf:controller/tick

# Loot
execute as @e[type=minecraft:item,nbt=!{Item:{tag:{display:{Name:'[{"text":"Dragon\'s Bounty","italic":false,"color":"light_purple"}]'}}}},nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjRjYWJlYzE4Mzk0ZjQ4MTkxNTI2ZDkwNTllNDU4ZTAxMTZmZTg0Yjc5YzY0NWNhNTQ2NDkzNzdiNjhmNTQzYiJ9fX0="}]}}}}}] at @s run loot spawn ~ ~ ~ loot bdf:custom/dragon_loot
execute as @e[type=minecraft:item,nbt=!{Item:{tag:{display:{Name:'[{"text":"Dragon\'s Bounty","italic":false,"color":"light_purple"}]'}}}},nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjRjYWJlYzE4Mzk0ZjQ4MTkxNTI2ZDkwNTllNDU4ZTAxMTZmZTg0Yjc5YzY0NWNhNTQ2NDkzNzdiNjhmNTQzYiJ9fX0="}]}}}}}] at @s run kill @s