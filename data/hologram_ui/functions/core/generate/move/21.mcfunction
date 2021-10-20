#> hologram_ui:core/generate/move/21
# @within function hologram_ui:core/generate/move/22

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/20
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^104.8576 run function hologram_ui:core/generate/move/20