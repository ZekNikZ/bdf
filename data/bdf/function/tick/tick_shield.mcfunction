effect give @e[type=minecraft:ender_dragon] minecraft:glowing 5
execute as @e[type=minecraft:ender_dragon] at @s as @e[type=minecraft:arrow,distance=..10] at @s run particle minecraft:block_marker{block_state:"minecraft:barrier"} ~ ~ ~
execute as @e[type=minecraft:ender_dragon] at @s as @e[type=minecraft:spectral_arrow,distance=..10] at @s run particle minecraft:block_marker{block_state:"minecraft:barrier"} ~ ~ ~
execute as @e[type=minecraft:ender_dragon] at @s as @e[type=minecraft:firework_rocket,distance=..10] at @s run particle minecraft:block_marker{block_state:"minecraft:barrier"} ~ ~ ~
execute as @e[type=minecraft:ender_dragon] at @s run kill @e[type=minecraft:arrow,distance=..10]
execute as @e[type=minecraft:ender_dragon] at @s run kill @e[type=minecraft:spectral_arrow,distance=..10]
execute as @e[type=minecraft:ender_dragon] at @s run kill @e[type=minecraft:firework_rocket,distance=..10]