#> hologram_ui:core/cursor/select
# @within advancement hologram_ui:cursor.select

execute if score @s HologramID = @s HologramID run function #minecraft:select_hologram
advancement revoke @s only hologram_ui:cursor.select