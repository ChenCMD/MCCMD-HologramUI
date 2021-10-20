#> hologram_ui:core/generate/move/24
# @within function hologram_ui:core/generate/move/25

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/23
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^838.8608 run function hologram_ui:core/generate/move/23