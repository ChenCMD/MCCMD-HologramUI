#> hologram_ui:core/generate/offset/get_text_length
# @within function hologram_ui:core/generate/offset/x

execute store result score $TextLength HologramUICore if data storage hologram_ui: TextGroup[-1].Text[]
execute store result score $TextSpaceWidth HologramUICore run data get storage hologram_ui: TextGroup[-1].Setting.TextSpaceWidth 10000
scoreboard players remove $TextLength HologramUICore 1
scoreboard players operation $TextLength HologramUICore *= $TextSpaceWidth HologramUICore
scoreboard players reset $TextSpaceWidth HologramUICore