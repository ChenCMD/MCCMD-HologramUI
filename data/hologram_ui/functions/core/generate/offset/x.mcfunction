#> hologram_ui:core/generate/offset/x
#
#
#
# @within function hologram_ui:core/generate/offset/

execute store result score $Move HologramUICore run data get storage hologram_ui: TextGroup[-1].Offset[-1] 10000
execute if score $Move HologramUICore matches 1.. at @s rotated ~ 0 run function hologram_ui:core/generate/move/31
execute if score $Move HologramUICore matches ..-1 run scoreboard players operation $Move HologramUICore *= $-1 HologramUICore
execute if score $Move HologramUICore matches 1.. at @s rotated ~180 0 run function hologram_ui:core/generate/move/31
execute run data remove storage hologram_ui: TextGroup[-1].Offset[-1]