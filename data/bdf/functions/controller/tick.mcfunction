# Determine which crystals are present
execute as @e[tag=bdf_crystal_marker,tag=!bdf_crystal_not_present] at @s unless entity @e[tag=bdf_crystal,distance=..5] run tag @s add bdf_crystal_not_present
execute as @e[tag=bdf_crystal_marker,tag=bdf_crystal_not_present] at @s if entity @e[tag=bdf_crystal,distance=..5] run tag @s remove bdf_crystal_not_present

# Handle crystal beacons
execute as @e[tag=bdf_crystal_marker,tag=!bdf_crystal_not_present] at @s unless block ~ ~-2 ~ minecraft:beacon run setblock ~ ~-2 ~ minecraft:beacon
execute as @e[tag=bdf_crystal_marker,tag=bdf_crystal_not_present] at @s if block ~ ~-2 ~ minecraft:beacon run setblock ~ ~-2 ~ minecraft:bedrock

# State-dependent functions
execute if score fight_state bdf_state matches 0 run function bdf:stages/0_initial
execute if score fight_state bdf_state matches 1 run function bdf:stages/1_mechanic
execute if score fight_state bdf_state matches 2 run function bdf:stages/2_attack
execute if score fight_state bdf_state matches 3 run function bdf:stages/3_defend

# Shield
execute if score shield bdf_state matches 1 run function bdf:helpers/tick_shield

# Stats
execute store result score dragon_health bdf_state run data get entity @e[type=minecraft:ender_dragon,limit=1] Health

# Item loss prevention
execute in minecraft:the_end run tag @a[predicate=bdf:in_the_end,x=-200,dx=400,y=-40,dy=-400,z=-200,dz=400] add bdf_loss_prevention
execute in minecraft:the_end run spreadplayers 0 0 0 1 under 70 true @a[tag=bdf_loss_prevention]
tellraw @a[tag=bdf_loss_prevention] {"text":"You fell into the void, but because a public event is going on, your items are not lost. They were moved to the end portal within The End.","color": "red","italic": true}
execute as @a[tag=bdf_loss_prevention] run damage @s 1000 minecraft:out_of_world
tag @a[tag=bdf_loss_prevention] remove bdf_loss_prevention