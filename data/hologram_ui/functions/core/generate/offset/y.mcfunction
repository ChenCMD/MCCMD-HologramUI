#> hologram_ui:core/generate/offset/y
#
#
#
# @within function hologram_ui:core/generate/offset/

execute store result score $Move HologramUICore run data get storage hologram_ui: TextGroup[-1].Offset[-1] 10000
execute if score $Move HologramUICore matches 1.. rotated ~ -90 run function hologram_ui:core/generate/move/31
execute if score $Move HologramUICore matches ..-1 run scoreboard players operation $Move HologramUICore *= $-1 HologramUICore
execute if score $Move HologramUICore matches 1.. rotated ~ 90 run function hologram_ui:core/generate/move/31
data remove storage hologram_ui: TextGroup[-1].Offset[-1]