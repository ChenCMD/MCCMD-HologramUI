#> hologram_ui:core/generate/move/28
# @within function hologram_ui:core/generate/move/29

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/27
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^13421.7728 run function hologram_ui:core/generate/move/27