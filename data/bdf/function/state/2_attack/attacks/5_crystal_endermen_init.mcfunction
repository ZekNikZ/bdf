tellraw @a[predicate=bdf:in_the_end] {"text":"Arise my minions to heal me!","color": "light_purple","italic": true}

summon minecraft:enderman ~ ~ ~ {Tags:["bdf_minion","bdf_fresh_spawn","bdf_cleanup"],PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:0b,Glowing:1b}],Glowing:1b,Health:1}
summon minecraft:enderman ~ ~ ~ {Tags:["bdf_minion","bdf_fresh_spawn","bdf_cleanup"],PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:0b,Glowing:1b}],Glowing:1b,Health:1}
summon minecraft:enderman ~ ~ ~ {Tags:["bdf_minion","bdf_fresh_spawn","bdf_cleanup"],PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:0b,Glowing:1b}],Glowing:1b,Health:1}
summon minecraft:enderman ~ ~ ~ {Tags:["bdf_minion","bdf_fresh_spawn","bdf_cleanup"],PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:0b,Glowing:1b}],Glowing:1b,Health:1}
summon minecraft:enderman ~ ~ ~ {Tags:["bdf_minion","bdf_fresh_spawn","bdf_cleanup"],PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:0b,Glowing:1b}],Glowing:1b,Health:1}
spreadplayers 0 0 30 100 under 70 false @e[tag=bdf_fresh_spawn]
team join bdf_champion @e[tag=bdf_fresh_spawn]
tag @e[tag=bdf_fresh_spawn] remove bdf_fresh_spawn