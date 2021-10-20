#> hologram_ui:core/generate/move/1
# @within function hologram_ui:core/generate/move/2

scoreboard players operation $Move HologramUICore *= $2 HologramUICore
execute if score $Move HologramUICore matches 0.. run tp @s ~ ~ ~
execute if score $Move HologramUICore matches ..-1 positioned ^ ^ ^0.0001 run tp @s ~ ~ ~