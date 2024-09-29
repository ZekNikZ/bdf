execute if score WarningZaps bdf_attacks matches 1.. run schedule function bdf:state/2_attack/attacks/6_floor_is_lava_zap 2s
execute if score WarningZaps bdf_attacks matches 1.. as @a[predicate=bdf:in_the_end] at @s run playsound minecraft:block.bell.resonate ambient @s ~ ~ ~ 1 1.5
execute if score WarningZaps bdf_attacks matches 1.. as @a[predicate=bdf:in_the_end] at @s run title @a[predicate=bdf:in_the_end] actionbar {"text":"The ground beneath you electrifies...","color":"aqua","italic":true}
execute if score WarningZaps bdf_attacks matches 1.. as @a[predicate=bdf:in_the_end] at @s run title @a[predicate=bdf:in_the_end] times 20t 60t 10t
execute if score WarningZaps bdf_attacks matches 1.. as @a[predicate=bdf:in_the_end] at @s run title @a title ""
execute if score WarningZaps bdf_attacks matches 1.. as @a[predicate=bdf:in_the_end] at @s if block ~ ~-1 ~ minecraft:end_stone run particle minecraft:dust{color:[0,1,1],scale:2} ~ ~.2 ~ 2 0 2 1 30
execute if score WarningZaps bdf_attacks matches 1.. run scoreboard players remove WarningZaps bdf_attacks 1
