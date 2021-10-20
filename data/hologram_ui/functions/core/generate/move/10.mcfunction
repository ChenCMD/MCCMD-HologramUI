#> hologram_ui:core/generate/move/10
# @within function hologram_ui:core/generate/move/11

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/9
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^0.0512 run function hologram_ui:core/generate/move/9