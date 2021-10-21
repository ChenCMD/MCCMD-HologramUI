#> hologram_ui:core/generate/item_icon
# @within function hologram_ui:core/generate/base

#>
# @private
    #declare tag Init

# Temp初期化
    data modify storage hologram_ui: Temp set value {Count:1b}

# ベースsummon
    summon armor_stand ~ 300 ~ {Marker:1b,Invisible:1b,Tags:["Hologram","HologramStand","Init"],Passengers:[{id:"item",Item:{id:"barrier",Count:1b,tag:{CustomModelData:0}},NoGravity:1b,PickupDelay:32767s,Tags:["Hologram","HologramItem"]}]}
# えんちゃ
    execute if data storage hologram_ui: TextGroup[-1].Item[-1].Setting{Enchant:1b} run data modify storage hologram_ui: Temp.tag.Enchantments set value []
# ItemID
    data modify storage hologram_ui: Temp.id set from storage hologram_ui: TextGroup[-1].Item[-1].id
# CMD
    data modify storage hologram_ui: Temp.tag.CustomModelData set from storage hologram_ui: TextGroup[-1].Item[-1].Setting.CMD
# CustomModelData
    execute if data storage hologram_ui: TextGroup[-1].Item[-1].Setting.CustomModelData run data modify storage hologram_ui: Temp.tag.CustomModelData set from storage hologram_ui: TextGroup[-1].Item[-1].Setting.CustomModelData

# Tempを適用
    data modify entity @e[type=item,tag=HologramItem,distance=..0,y=300,limit=1] Item set from storage hologram_ui: Temp
# HologramID
    execute store result score @e[type=item,tag=HologramItem,distance=..0,y=300,limit=1] HologramID run data get storage hologram_ui: TextGroup[-1].HologramID
# AnyNBT
    execute if data storage hologram_ui: TextGroup[-1].Item[-1].Setting.NBT run data modify entity @e[type=item,tag=HologramItem,distance=..0,y=300,limit=1] {} merge from storage hologram_ui: TextGroup[-1].Item[-1].Setting.NBT

# Offset.y
    tp @e[type=armor_stand,tag=HologramStand,tag=Init,distance=..0.001,y=300,limit=1] ~ ~0.1 ~
    execute store result score $Move HologramUICore run data get storage hologram_ui: TextGroup[-1].Item[-1].Offset 10000
    execute if score $Move HologramUICore matches 50000.. run scoreboard players set $Move HologramUICore 49999
    execute if score $Move HologramUICore matches ..-50000 run scoreboard players set $Move HologramUICore -49999
    execute if score $Move HologramUICore matches 1.. as @e[type=armor_stand,tag=HologramStand,tag=Init,distance=..0.001,limit=1] rotated ~ -90 run function hologram_ui:core/generate/move/31
    execute if score $Move HologramUICore matches ..-1 run scoreboard players operation $Move HologramUICore *= $-1 HologramUICore
    execute if score $Move HologramUICore matches 1.. as @e[type=armor_stand,tag=HologramStand,tag=Init,distance=..0.001,limit=1] rotated ~ 90 run function hologram_ui:core/generate/move/31
# TagDelete
    tag @e[type=armor_stand,tag=HologramStand,tag=Init,distance=..5,limit=1] remove Init
# remove
    data remove storage hologram_ui: TextGroup[-1].Item[-1]