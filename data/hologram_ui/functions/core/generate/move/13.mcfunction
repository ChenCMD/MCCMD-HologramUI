#> hologram_ui:core/generate/move/13
# @within function hologram_ui:core/generate/move/14

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/12
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^0.4096 run function hologram_ui:core/generate/move/12