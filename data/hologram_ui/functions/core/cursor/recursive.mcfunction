#> hologram_ui:core/cursor/recursive
# @within function
#   hologram_ui:core/cursor/main
#   hologram_ui:core/cursor/recursive

execute if entity @s[distance=..10] positioned ~ ~-0.15 ~ if entity @e[type=area_effect_cloud,tag=HologramCollider,distance=..0.15,sort=nearest,limit=1] run scoreboard players operation @s HologramID = @e[type=area_effect_cloud,tag=HologramCollider,distance=..0.15,sort=nearest,limit=1] HologramID
execute if entity @s[distance=..10] positioned ~ ~-0.15 ~ unless entity @e[type=area_effect_cloud,tag=HologramCollider,distance=..0.15,sort=nearest,limit=1] positioned ~ ~0.15 ~ positioned ^ ^ ^0.0375 if block ~ ~ ~ air run function hologram_ui:core/cursor/recursive