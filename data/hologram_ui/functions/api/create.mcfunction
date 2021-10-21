#> hologram_ui:api/create
#
# ホログラムを出力します
#
# @input
#   storage hologram_ui: TextGroup: compound[]
# @output
#   entity ホログラム
# @api

execute if data storage hologram_ui: TextGroup[1] run data modify storage array_util: Array set from storage hologram_ui: TextGroup
execute if data storage hologram_ui: TextGroup[1] run function array_util:api/reverse
execute if data storage hologram_ui: TextGroup[1] run data modify storage hologram_ui: TextGroup set from storage array_util: Array
execute if data storage hologram_ui: TextGroup[0] run tp 0-a-17a7-4-0 ~ ~-0.38 ~ ~ ~
execute if data storage hologram_ui: TextGroup[0] as 0-a-17a7-4-0 at 0-a-17a7-4-0 run function hologram_ui:core/generate/defer_tp