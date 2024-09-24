summon minecraft:block_display ~ ~ ~ {Tags:["bdf_hotspot_display","bdf_cleanup"],brightness:{block:15,sky:15}}
data merge entity @n[tag=bdf_hotspot_display] {transformation:{scale:[0.3f,200f,0.3f],translation:[-0.15f,0f,-0.15f]}}
scoreboard players operation @n[tag=bdf_hotspot] bdf_minions = #next_hotspot bdf_minions
scoreboard players operation @n[tag=bdf_hotspot_display] bdf_minions = #next_hotspot bdf_minions
scoreboard players add #next_hotspot bdf_minions 1