# summon temporary entity "in front of the player", if the player was standing at 0 0 0
execute positioned ~ ~-5 ~ facing entity @r[predicate=bdf:in_the_end] feet positioned 0.0 0 0.0 run summon marker ^ ^ ^0.2 {Tags:["direction"]}

# summon the projectile entity (e.g. sheep, but can also be an arrow/snowball/etc.
# When using a projectile, you might want to summon it in front of the player so it doesn't hit the player themselves)
# you might want to summon it at the players eyes as well using anchored eyes
summon dragon_fireball ~ ~-5 ~ {Tags:["projectile"]}
data modify entity @e[tag=projectile,limit=1] Owner set from entity @e[type=minecraft:ender_dragon,limit=1] UUID
data modify entity @e[tag=projectile,limit=1] LeftOwner set value 0b

# copy the markers position tag to the sheeps motion tag
data modify entity @e[type=dragon_fireball,tag=projectile,limit=1] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos
data modify entity @e[type=dragon_fireball,tag=projectile,limit=1] power set from entity @e[type=marker,tag=direction,limit=1] Pos

# clean up
tag @e[tag=projectile] remove projectile
kill @e[tag=direction]