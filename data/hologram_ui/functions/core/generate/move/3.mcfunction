#> hologram_ui:core/generate/move/3
# @within function hologram_ui:core/generate/move/4

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/2
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^0.0004 run function hologram_ui:core/generate/move/2