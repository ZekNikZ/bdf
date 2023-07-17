# Clear schedules
schedule clear bdf:stages/transitions/to_0
schedule clear bdf:stages/transitions/to_1
schedule clear bdf:stages/transitions/to_2
schedule clear bdf:stages/transitions/to_3
schedule clear bdf:stages/events/fireball
schedule clear bdf:stages/events/lightning
schedule clear bdf:stages/events/spawn_more_mobs
schedule clear bdf:stages/events/player_swap

# Kill markers
kill @e[tag=bdf_minion]
kill @e[tag=bdf_crystal_marker]
kill @e[tag=bdf_crystal]
kill @e[tag=bdf_hotspot]
kill @e[tag=bdf_hotspot_display]
kill @e[tag=bdf_shard]
kill @e[tag=bdf_lightning]
kill @e[tag=bdf_swap_target]
tag @e[tag=bdf_controller] remove bdf_active
tag @e[type=minecraft:ender_dragon,tag=!bdf_teardown] add bdf_teardown

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

# Game state
scoreboard objectives remove bdf_state

# Misc
function bdf:randomizer/teardown
scoreboard objectives remove bdf_constants
scoreboard objectives remove bdf_minions
team remove bdf_dragon
team remove bdf_champion

# Grant advancement & loot
advancement grant @a[predicate=bdf:in_the_end] only minecraft:end/kill_dragon
execute as @a[predicate=bdf:in_the_end] run function bdf:helpers/give_loot
execute as @a[predicate=bdf:in_the_end] unless score @s bdf_has_egg matches 1.. run give @s minecraft:dragon_egg
scoreboard players set @a[predicate=bdf:in_the_end] bdf_has_egg 1

tellraw ZekNikZ ["",{"text":"[Better Dragon Fight] ","color":"light_purple"},"Dragon fight cleaned up."]