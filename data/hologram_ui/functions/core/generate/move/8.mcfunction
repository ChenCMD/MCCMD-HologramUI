#> hologram_ui:core/generate/move/8
# @within function hologram_ui:core/generate/move/9

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/7
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^0.0128 run function hologram_ui:core/generate/move/7