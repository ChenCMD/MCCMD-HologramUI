#> hologram_ui:core/generate/move/29
# @within function hologram_ui:core/generate/move/30

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/28
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^26843.5456 run function hologram_ui:core/generate/move/28