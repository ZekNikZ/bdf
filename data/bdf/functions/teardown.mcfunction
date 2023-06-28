# Clear schedules

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

# Grant advancement
advancement grant @a[predicate=bdf:in_the_end] only minecraft:end/kill_dragon

tellraw ZekNikZ ["",{"text":"[Better Dragon Fight] ","color":"light_purple"},"Dragon fight cleaned up."]