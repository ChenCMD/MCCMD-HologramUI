#> hologram_ui:core/generate/move/19
# @within function hologram_ui:core/generate/move/20

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/18
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^26.2144 run function hologram_ui:core/generate/move/18