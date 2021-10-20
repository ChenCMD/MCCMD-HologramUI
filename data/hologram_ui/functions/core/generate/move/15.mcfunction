#> hologram_ui:core/generate/move/15
# @within function hologram_ui:core/generate/move/16

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/14
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^1.6384 run function hologram_ui:core/generate/move/14