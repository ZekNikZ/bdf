# Fireballs
execute in minecraft:the_end run summon minecraft:marker 0 200 0 {Tags:["bdf_attack_option","bdf_cleanup","bdf_attack_assign"]}
execute in minecraft:the_end run summon minecraft:marker 0 200 0 {Tags:["bdf_attack_option","bdf_cleanup","bdf_attack_assign"]}
execute in minecraft:the_end run summon minecraft:marker 0 200 0 {Tags:["bdf_attack_option","bdf_cleanup","bdf_attack_assign"]}
scoreboard players set @e[tag=bdf_attack_assign] bdf_minions 1
tag @e[tag=bdf_attack_assign] remove bdf_attack_assign

# Lightning
execute in minecraft:the_end run summon minecraft:marker 0 200 0 {Tags:["bdf_attack_option","bdf_cleanup","bdf_attack_assign"]}
execute in minecraft:the_end run summon minecraft:marker 0 200 0 {Tags:["bdf_attack_option","bdf_cleanup","bdf_attack_assign"]}
scoreboard players set @e[tag=bdf_attack_assign] bdf_minions 2
tag @e[tag=bdf_attack_assign] remove bdf_attack_assign

# Rain Fire
execute in minecraft:the_end run summon minecraft:marker 0 200 0 {Tags:["bdf_attack_option","bdf_cleanup","bdf_attack_assign"]}
execute in minecraft:the_end run summon minecraft:marker 0 200 0 {Tags:["bdf_attack_option","bdf_cleanup","bdf_attack_assign"]}
scoreboard players set @e[tag=bdf_attack_assign] bdf_minions 3
tag @e[tag=bdf_attack_assign] remove bdf_attack_assign

# Force Aggro
execute if score Level bdf_state matches 2.. in minecraft:the_end run summon minecraft:marker 0 200 0 {Tags:["bdf_attack_option","bdf_cleanup","bdf_attack_assign"]}
execute if score Level bdf_state matches 2.. in minecraft:the_end run summon minecraft:marker 0 200 0 {Tags:["bdf_attack_option","bdf_cleanup","bdf_attack_assign"]}
scoreboard players set @e[tag=bdf_attack_assign] bdf_minions 4
tag @e[tag=bdf_attack_assign] remove bdf_attack_assign

# Crystal endermen
execute if score Level bdf_state matches 3.. in minecraft:the_end run summon minecraft:marker 0 200 0 {Tags:["bdf_attack_option","bdf_cleanup","bdf_attack_assign"]}
execute if score Level bdf_state matches 3.. in minecraft:the_end run summon minecraft:marker 0 200 0 {Tags:["bdf_attack_option","bdf_cleanup","bdf_attack_assign"]}
scoreboard players set @e[tag=bdf_attack_assign] bdf_minions 5
tag @e[tag=bdf_attack_assign] remove bdf_attack_assigngn

# Floor is lava
execute if score Level bdf_state matches 4.. in minecraft:the_end run summon minecraft:marker 0 200 0 {Tags:["bdf_attack_option","bdf_cleanup","bdf_attack_assign"]}
execute if score Level bdf_state matches 4.. in minecraft:the_end run summon minecraft:marker 0 200 0 {Tags:["bdf_attack_option","bdf_cleanup","bdf_attack_assign"]}
scoreboard players set @e[tag=bdf_attack_assign] bdf_minions 6
tag @e[tag=bdf_attack_assign] remove bdf_attack_assign