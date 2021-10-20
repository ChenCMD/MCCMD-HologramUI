#> hologram_ui:core/generate/offset
# @within function
#   hologram_ui:core/generate/defer_tp
#   hologram_ui:core/generate/offset

# Offset.y
    execute if data storage hologram_ui: TextGroup[-1].Offset[-1] store result score $Move HologramUICore run data get storage hologram_ui: TextGroup[-1].Offset[-1] 10000
    execute if data storage hologram_ui: TextGroup[-1].Offset[-1] if score $Move HologramUICore matches 1.. rotated ~ 90 run function hologram_ui:core/generate/move/31
    execute if data storage hologram_ui: TextGroup[-1].Offset[-1] if score $Move HologramUICore matches ..-1 run scoreboard players operation $Move HologramUICore *= $-1 HologramUICore
    execute if data storage hologram_ui: TextGroup[-1].Offset[-1] if score $Move HologramUICore matches 1.. rotated ~ -90 run function hologram_ui:core/generate/move/31
    execute if data storage hologram_ui: TextGroup[-1].Offset[-1] run data remove storage hologram_ui: TextGroup[-1].Offset[-1]
# Offset.x
    execute if data storage hologram_ui: TextGroup[-1].Offset[-1] store result score $Move HologramUICore run data get storage hologram_ui: TextGroup[-1].Offset[-1] 10000
    execute if data storage hologram_ui: TextGroup[-1].Offset[-1] if score $Move HologramUICore matches 1.. at @s rotated ~ 0 run function hologram_ui:core/generate/move/31
    execute if data storage hologram_ui: TextGroup[-1].Offset[-1] if score $Move HologramUICore matches ..-1 run scoreboard players operation $Move HologramUICore *= $-1 HologramUICore
    execute if data storage hologram_ui: TextGroup[-1].Offset[-1] if score $Move HologramUICore matches 1.. at @s rotated ~180 0 run function hologram_ui:core/generate/move/31
    execute if data storage hologram_ui: TextGroup[-1].Offset[-1] run data remove storage hologram_ui: TextGroup[-1].Offset[-1]
# Text反転
    execute if data storage hologram_ui: TextGroup[-1].Text[1] run data modify storage chenbr:array_util Array set from storage hologram_ui: TextGroup[-1].Text
    execute if data storage hologram_ui: TextGroup[-1].Text[1] run function chenbr_array_utility:api/reverse
    execute if data storage hologram_ui: TextGroup[-1].Text[1] run data modify storage hologram_ui: TextGroup[-1].Text set from storage chenbr:array_util Array
# ItemIcon反転
    execute if data storage hologram_ui: TextGroup[-1].ItemIcon[1] run data modify storage chenbr:array_util Array set from storage hologram_ui: TextGroup[-1].ItemIcon
    execute if data storage hologram_ui: TextGroup[-1].ItemIcon[1] run function chenbr_array_utility:api/reverse
    execute if data storage hologram_ui: TextGroup[-1].ItemIcon[1] run data modify storage hologram_ui: TextGroup[-1].ItemIcon set from storage chenbr:array_util Array
# Text描画
    execute if data storage hologram_ui: TextGroup[-1].Text[-1] unless data storage hologram_ui: TextGroup[-1].Setting.TextSpaceWidth run data modify storage hologram_ui: TextGroup[-1].Setting.TextSpaceWidth set value 0.12f
    execute if data storage hologram_ui: TextGroup[-1].Text[-1] at @s run function hologram_ui:core/generate/base
# Listから削除
    data remove storage hologram_ui: TextGroup[-1]
# 描画するホログラムがまだある場合の処理
    execute if data storage hologram_ui: TextGroup[0] positioned ~ ~ ~ run function hologram_ui:core/generate/offset