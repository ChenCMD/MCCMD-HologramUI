#> hologram_ui:core/generate/move/30
# @within function hologram_ui:core/generate/move/31

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/29
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^53687.0912 run function hologram_ui:core/generate/move/29