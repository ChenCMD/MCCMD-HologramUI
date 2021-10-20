#> hologram_ui:core/generate/move/23
# @within function hologram_ui:core/generate/move/24

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/22
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^419.4304 run function hologram_ui:core/generate/move/22