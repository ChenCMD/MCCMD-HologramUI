#> hologram_ui:core/generate/move/27
# @within function hologram_ui:core/generate/move/28

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/26
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^6710.8864 run function hologram_ui:core/generate/move/26