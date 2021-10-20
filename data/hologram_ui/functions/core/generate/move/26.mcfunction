#> hologram_ui:core/generate/move/26
# @within function hologram_ui:core/generate/move/27

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/25
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^3355.4432 run function hologram_ui:core/generate/move/25