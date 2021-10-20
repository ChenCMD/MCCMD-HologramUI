#> hologram_ui:core/generate/move/14
# @within function hologram_ui:core/generate/move/15

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/13
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^0.8192 run function hologram_ui:core/generate/move/13