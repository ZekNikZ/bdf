summon minecraft:end_crystal ~ ~ ~ {ShowBottom:1b,Tags:["bdf_crystal"]}
execute as @a[predicate=bdf:in_the_end] at @s run playsound entity.zombie_villager.converted voice @s ~ ~ ~
tellraw @a[predicate=bdf:in_the_end] {"text":"An end crystal reappears...","color":"aqua","italic":true}
function bdf:helpers/spawn_firework