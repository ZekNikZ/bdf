scoreboard players set NumPlayers bdf_math 0
execute as @a[predicate=bdf:in_the_end] run scoreboard players add NumPlayers bdf_math 1
return run scoreboard players get NumPlayers bdf_math