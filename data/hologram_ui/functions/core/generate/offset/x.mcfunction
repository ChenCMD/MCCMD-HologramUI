#> hologram_ui:core/generate/offset/x
#
#
#
# @within function hologram_ui:core/generate/offset/

execute store result score $Move HologramUICore run data get storage hologram_ui: TextGroup[-1].Offset[0] 10000

execute if data storage hologram_ui: TextGroup[-1].Setting.TextAlign unless data storage hologram_ui: TextGroup[-1].Setting{TextAlign:"Left"} run function hologram_ui:core/generate/offset/get_text_length
execute if data storage hologram_ui: TextGroup[-1].Setting{TextAlign:"Center"} run scoreboard players operation $TextLength HologramUICore /= $2 HologramUICore
execute if data storage hologram_ui: TextGroup[-1].Setting.TextAlign unless data storage hologram_ui: TextGroup[-1].Setting{TextAlign:"Left"} run scoreboard players operation $Move HologramUICore -= $TextLength HologramUICore
execute if score $Move HologramUICore matches 1.. rotated ~ 0 run function hologram_ui:core/generate/move/31
execute if score $Move HologramUICore matches ..-1 run scoreboard players operation $Move HologramUICore *= $-1 HologramUICore
execute if score $Move HologramUICore matches 1.. rotated ~180 0 run function hologram_ui:core/generate/move/31