execute in minecraft:the_end run tag @a[predicate=bdf:in_the_end,x=-200,dx=400,y=-40,dy=-400,z=-200,dz=400] add bdf_loss_prevention
execute in minecraft:the_end run spreadplayers 0 0 0 1 under 70 true @a[tag=bdf_loss_prevention]
tellraw @a[tag=bdf_loss_prevention] {"text":"You fell into the void, but because a public event is going on, your items are not lost. They were moved to the end portal within The End.","color": "red","italic": true}
execute as @a[tag=bdf_loss_prevention] run damage @s 1000 minecraft:out_of_world
tag @a[tag=bdf_loss_prevention] remove bdf_loss_prevention