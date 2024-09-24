$attribute @e[type=minecraft:ender_dragon,limit=1] minecraft:generic.max_health base set $(MaxHealth)
$data merge entity @e[type=ender_dragon,limit=1] {Health:$(MaxHealth)}