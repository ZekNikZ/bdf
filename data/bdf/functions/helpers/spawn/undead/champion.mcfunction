summon minecraft:spider ~ ~ ~ {Tags:["bdf_minion"],PersistenceRequired:1b,Passengers:[{id:"minecraft:skeleton",PersistenceRequired:1b,Glowing:1b,Tags:["bdf_champion","bdf_minion"],Health:80,Attributes:[{Name:"minecraft:generic.max_health",Base:80}],HandItems:[{Count:1,id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:punch",lvl:3}]}}],CustomName:'"Dragon\'s Champion"',DeathLootTable:"bdf:custom/nothing"}],CustomName:'"Dragonspawn"',DeathLootTable:"bdf:custom/nothing"}
summon minecraft:marker ~ ~ ~ {Tags:["bdf_champion_marker"]}
scoreboard players operation @e[tag=bdf_champion,sort=nearest,limit=1] bdf_minions = #next_champion bdf_minions
scoreboard players operation @e[tag=bdf_champion_marker,sort=nearest,limit=1] bdf_minions = #next_champion bdf_minions
team join bdf_champion @e[tag=bdf_champion,sort=nearest,limit=1]
scoreboard players add #next_champion bdf_minions 1