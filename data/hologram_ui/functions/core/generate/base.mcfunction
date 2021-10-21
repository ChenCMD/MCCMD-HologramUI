#> hologram_ui:core/generate/base
# @within function
#   hologram_ui:core/generate/offset/
#   hologram_ui:core/generate/base

# ItemIconの検査
    data modify storage hologram_ui: Test.String set from storage hologram_ui: TextGroup[-1].Text[-1]
    execute if data storage hologram_ui: Test{String:"Item()"} run function hologram_ui:core/generate/item_icon
    execute unless data storage hologram_ui: Test{String:"Item()"} unless data storage hologram_ui: Test{String:""} run function hologram_ui:core/generate/text
# Collider
    execute unless data storage hologram_ui: TextGroup[-1].Setting{Selectable:0b} positioned ~ ~0.15 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Hologram","HologramCollider"]}
    execute unless data storage hologram_ui: TextGroup[-1].Setting{Selectable:0b} positioned ~ ~0.15 ~ run tp @e[type=area_effect_cloud,tag=HologramCollider,distance=..0.0001,limit=1] ~ ~ ~ ~90 ~
    execute unless data storage hologram_ui: TextGroup[-1].Setting{Selectable:0b} positioned ~ ~0.15 ~ store result score @e[type=area_effect_cloud,tag=HologramCollider,distance=..0.0001,limit=1] HologramID run data get storage hologram_ui: TextGroup[-1].HologramID
# Listから削除
    data remove storage hologram_ui: TextGroup[-1].Text[-1]
# 描画する文字がまだある場合の処理
    execute if data storage hologram_ui: TextGroup[-1].Text[0] store result score $Move HologramUICore run data get storage hologram_ui: TextGroup[-1].Setting.TextSpaceWidth 10000
    execute if data storage hologram_ui: TextGroup[-1].Text[0] rotated ~ 0 run function hologram_ui:core/generate/move/31
    execute if data storage hologram_ui: TextGroup[-1].Text[0] at @s run function hologram_ui:core/generate/base