execute unless predicate bdf:has_bad_omen run return 0
execute store result score BadOmenQuery bdf_math run data get entity @s active_effects[{id:"minecraft:bad_omen"}].amplifier
scoreboard players add BadOmenQuery bdf_math 1

execute if score BadOmenQuery bdf_math > MaxBadOmen bdf_math run tag @a[tag=bdf_bad_omen_provider] remove bdf_bad_omen_provider
execute if score BadOmenQuery bdf_math > MaxBadOmen bdf_math run tag @s add bdf_bad_omen_provider
execute if score BadOmenQuery bdf_math > MaxBadOmen bdf_math run scoreboard players operation MaxBadOmen bdf_math = BadOmenQuery bdf_math