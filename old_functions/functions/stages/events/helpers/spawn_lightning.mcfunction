tag @e[tag=bdf_lightning,limit=1,sort=random] add bdf_lightning_rod

execute as @e[tag=bdf_lightning_rod,limit=1] at @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @e[tag=bdf_lightning_rod,limit=1] at @s run summon dragon_fireball ~ ~1 ~ {Motion:[0.0,-1.0,0.0]}
execute as @e[tag=bdf_lightning_rod,limit=1] at @s run kill @s
execute if entity @e[tag=bdf_lightning] run schedule function bdf:stages/events/helpers/spawn_lightning 1s