tellraw @a[predicate=bdf:in_the_end] {"text":"Due to an issue, the server admin has manually advanced this portion of the end dragon fight.","color": "light_purple","italic": true}

kill @e[tag=bdf_minion]
kill @e[tag=bdf_hotspot]
kill @e[tag=bdf_hotspot_display]
kill @e[tag=bdf_shard]

schedule clear bdf:stages/transition/to_0
schedule clear bdf:stages/transition/to_1
schedule clear bdf:stages/transition/to_2
schedule clear bdf:stages/transition/to_3
schedule clear bdf:stages/events/fireball
schedule clear bdf:stages/events/spawn_more_mobs

function bdf:stages/transitions/to_1
