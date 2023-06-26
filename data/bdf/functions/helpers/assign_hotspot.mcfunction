summon minecraft:block_display ~ ~ ~ {Tags:["bdf_hotspot_display"],brightness:{block:15,sky:15}}
data merge entity @e[tag=bdf_hotspot_display,sort=nearest,limit=1] {transformation:{scale:[0.3f,200f,0.3f],translation:[-0.15f,0f,-0.15f]}}
scoreboard players operation @e[tag=bdf_hotspot,sort=nearest,limit=1] bdf_minions = #next_hotspot bdf_minions
scoreboard players operation @e[tag=bdf_hotspot_display,sort=nearest,limit=1] bdf_minions = #next_hotspot bdf_minions
scoreboard players add #next_hotspot bdf_minions 1