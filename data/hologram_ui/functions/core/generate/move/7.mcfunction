#> hologram_ui:core/generate/move/7
# @within function hologram_ui:core/generate/move/8

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/6
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^0.0064 run function hologram_ui:core/generate/move/6