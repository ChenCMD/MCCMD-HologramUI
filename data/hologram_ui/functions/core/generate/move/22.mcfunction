#> hologram_ui:core/generate/move/22
# @within function hologram_ui:core/generate/move/23

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/21
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^209.7152 run function hologram_ui:core/generate/move/21