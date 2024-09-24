summon minecraft:piglin_brute ~ ~ ~ {PersistenceRequired:1b,IsImmuneToZombification:1b,Glowing:1b,Tags:["bdf_champion","bdf_minion","bdf_cleanup","bdf_objective"],Health:80,attributes:[{id:"minecraft:generic.max_health",base:80}],HandItems:[{count:1,id:"minecraft:golden_axe"},{}],CustomName:'"Dragon\'s Champion"',DeathLootTable:"bdf:custom/nothing"}
summon minecraft:marker ~ ~ ~ {Tags:["bdf_champion_marker","bdf_cleanup"]}
scoreboard players operation @n[tag=bdf_champion] bdf_minions = #next_champion bdf_minions
scoreboard players operation @n[tag=bdf_champion_marker] bdf_minions = #next_champion bdf_minions
team join bdf_champion @n[tag=bdf_champion]
scoreboard players add #next_champion bdf_minions 1