# Create persistent objectives
scoreboard objectives add bdf_state dummy
scoreboard objectives add bdf_free_loot dummy

# Create admin team
team add bdf

tellraw @p[team=bdf] ["",{"text":"[Better Dragon Fight] ","color":"light_purple"},"Datapack reloaded."]
