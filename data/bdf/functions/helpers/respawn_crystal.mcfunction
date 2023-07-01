summon minecraft:end_crystal ~ ~ ~ {ShowBottom:1b,Tags:["bdf_crystal"]}
execute as @a[predicate=bdf:in_the_end] at @s run playsound entity.zombie_villager.converted voice @s ~ ~ ~
title @a[predicate=bdf:in_the_end] subtitle {"text":"An end crystal reappears...","color":"aqua","italic":true}
title @a[predicate=bdf:in_the_end] times 20t 60t 10t
title @a title ""
function bdf:helpers/spawn_firework