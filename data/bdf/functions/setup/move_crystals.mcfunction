# Make pillar taller
clone ~-5 ~-12 ~-5 ~5 ~-2 ~5 ~-5 ~-1 ~-5 replace
# clone ~-5 ~-12 ~-5 ~5 ~-2 ~5 ~-5 ~9 ~-5

# Move crystal (summon and kill instead of TP to prevent client desync)
summon minecraft:end_crystal ~ ~11 ~ {ShowBottom:1b,Tags:["bdf_crystal"]}
kill @s

# Bedrock
setblock ~ ~-1 ~ minecraft:bedrock