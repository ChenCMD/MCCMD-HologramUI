#> hologram_ui:core/generate/move/16
# @within function hologram_ui:core/generate/move/17

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/15
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^3.2768 run function hologram_ui:core/generate/move/15