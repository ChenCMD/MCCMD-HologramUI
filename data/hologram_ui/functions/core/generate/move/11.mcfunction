#> hologram_ui:core/generate/move/11
# @within function hologram_ui:core/generate/move/12

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/10
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^0.1024 run function hologram_ui:core/generate/move/10