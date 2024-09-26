tag @e[tag=bdf_lightning,sort=random,limit=1] add bdf_lightning_selected

execute as @e[tag=bdf_lightning_selected] at @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @e[tag=bdf_lightning_selected,limit=1] at @s run summon dragon_fireball ~ ~1 ~ {Motion:[0.0,-1.0,0.0]}
kill @e[tag=bdf_lightning_selected]

execute if entity @e[tag=bdf_lightning] run schedule function bdf:state/2_attack/attacks/2_lightning 3s