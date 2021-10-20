#> hologram_ui:core/generate/move/17
# @within function hologram_ui:core/generate/move/18

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/16
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^6.5536 run function hologram_ui:core/generate/move/16