# Teardown mechanic
execute if score Mechanic bdf_state matches 0 in minecraft:the_end run function bdf:state/1_mechanic/a_champions/teardown
execute if score Mechanic bdf_state matches 1 in minecraft:the_end run function bdf:state/1_mechanic/b_capture/teardown
execute if score Mechanic bdf_state matches 2 in minecraft:the_end run function bdf:state/1_mechanic/c_collect/teardown

# Remove bossbar
bossbar set bdf:shield players

# Remove shield
function bdf:helpers/disable_shield

tellraw @a[predicate=bdf:in_the_end] {"text":"The dragon is vulnerable! Now is your chance!","color":"gold","italic":true}
