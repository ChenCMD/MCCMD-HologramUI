#> hologram_ui:core/generate/move/4
# @within function hologram_ui:core/generate/move/5

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/3
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^0.0008 run function hologram_ui:core/generate/move/3