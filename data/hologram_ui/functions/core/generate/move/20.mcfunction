#> hologram_ui:core/generate/move/20
# @within function hologram_ui:core/generate/move/21

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/19
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^52.4288 run function hologram_ui:core/generate/move/19