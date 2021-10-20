#> hologram_ui:core/generate/move/18
# @within function hologram_ui:core/generate/move/19

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/17
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^13.1072 run function hologram_ui:core/generate/move/17