summon minecraft:zombie ~ ~ ~ {PersistenceRequired:1b,Tags:["bdf_minion", "bdf_fresh_spawn"],CustomName:'"Dragonspawn"',DeathLootTable:"bdf:custom/nothing"}
summon minecraft:zombie ~ ~ ~ {PersistenceRequired:1b,Tags:["bdf_minion", "bdf_fresh_spawn"],CustomName:'"Dragonspawn"',DeathLootTable:"bdf:custom/nothing"}

summon minecraft:skeleton ~ ~ ~ {PersistenceRequired:1b,Tags:["bdf_minion", "bdf_fresh_spawn"],HandItems:[{Count:1,id:"minecraft:bow"}],CustomName:'"Dragonspawn"',DeathLootTable:"bdf:custom/nothing"}
summon minecraft:skeleton ~ ~ ~ {PersistenceRequired:1b,Tags:["bdf_minion", "bdf_fresh_spawn"],HandItems:[{Count:1,id:"minecraft:bow"}],CustomName:'"Dragonspawn"',DeathLootTable:"bdf:custom/nothing"}

summon minecraft:husk ~ ~ ~ {PersistenceRequired:1b,Tags:["bdf_minion", "bdf_fresh_spawn"],CustomName:'"Dragonspawn"',DeathLootTable:"bdf:custom/nothing"}
summon minecraft:husk ~ ~ ~ {PersistenceRequired:1b,Tags:["bdf_minion", "bdf_fresh_spawn"],CustomName:'"Dragonspawn"',DeathLootTable:"bdf:custom/nothing"}

summon minecraft:stray ~ ~ ~ {PersistenceRequired:1b,Tags:["bdf_minion", "bdf_fresh_spawn"],HandItems:[{Count:1,id:"minecraft:bow"}],CustomName:'"Dragonspawn"',DeathLootTable:"bdf:custom/nothing"}
summon minecraft:stray ~ ~ ~ {PersistenceRequired:1b,Tags:["bdf_minion", "bdf_fresh_spawn"],HandItems:[{Count:1,id:"minecraft:bow"}],CustomName:'"Dragonspawn"',DeathLootTable:"bdf:custom/nothing"}

summon minecraft:cave_spider ~ ~ ~ {PersistenceRequired:1b,Tags:["bdf_minion", "bdf_fresh_spawn"],CustomName:'"Dragonspawn"',DeathLootTable:"bdf:custom/nothing"}
summon minecraft:cave_spider ~ ~ ~ {PersistenceRequired:1b,Tags:["bdf_minion", "bdf_fresh_spawn"],CustomName:'"Dragonspawn"',DeathLootTable:"bdf:custom/nothing"}

spreadplayers ~ ~ 5 15 under 70 false @e[tag=bdf_fresh_spawn]
tag @e[tag=bdf_fresh_spawn] remove bdf_fresh_spawn