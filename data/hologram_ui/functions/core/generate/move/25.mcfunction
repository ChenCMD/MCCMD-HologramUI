#> hologram_ui:core/generate/move/25
# @within function hologram_ui:core/generate/move/26

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/24
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^1677.7216 run function hologram_ui:core/generate/move/24