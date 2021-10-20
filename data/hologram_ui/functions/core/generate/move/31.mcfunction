#> hologram_ui:core/generate/move/31
# @within function
#   hologram_ui:core/generate/offset
#   hologram_ui:core/generate/base
#   hologram_ui:core/generate/item_icon

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run function hologram_ui:core/generate/move/30
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^107374.1824 run function hologram_ui:core/generate/move/30