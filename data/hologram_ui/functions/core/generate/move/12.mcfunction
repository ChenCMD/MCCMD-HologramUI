#> hologram_ui:core/generate/move/12
# @within function hologram_ui:core/generate/move/13

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/11
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^0.2048 run function hologram_ui:core/generate/move/11