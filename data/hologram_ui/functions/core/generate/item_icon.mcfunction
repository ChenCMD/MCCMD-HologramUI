#> hologram_ui:core/generate/item_icon
# @within function hologram_ui:core/generate/base

#>
# @private
    #declare tag Init

# ベースsummon
    summon armor_stand ~ 300 ~ {Marker:1b,Invisible:1b,Tags:["Hologram","HologramStand","Init"],Passengers:[{id:"item",Item:{id:"barrier",Count:1b,tag:{CustomModelData:0}},NoGravity:1b,PickupDelay:32767s,Tags:["Hologram","HologramItem"]}]}
# HologramID
    execute store result score @e[tag=HologramItem,distance=..0,y=300,limit=1] HologramID run data get storage hologram_ui: TextGroup[-1].HologramID
# えんちゃ
    execute if data storage hologram_ui: TextGroup[-1].ItemIcon[-1].Setting{Enchant:1b} run data merge entity @e[type=item,tag=HologramItem,distance=..0,y=300,limit=1] {Item:{tag:{Enchantments:[]}}}
# ItemID
    data modify entity @e[type=item,tag=HologramItem,distance=..0,y=300,limit=1] Item.id set from storage hologram_ui: TextGroup[-1].ItemIcon[-1].id
# CMD
    data modify entity @e[type=item,tag=HologramItem,distance=..0,y=300,limit=1] Item.tag.CustomModelData set from storage hologram_ui: TextGroup[-1].ItemIcon[-1].Setting.CMD
# CustomModelData
    execute if data storage hologram_ui: TextGroup[-1].ItemIcon[-1].Setting.CustomModelData run data modify entity @e[type=item,tag=HologramItem,distance=..0,y=300,limit=1] Item.tag.CustomModelData set from storage hologram_ui: TextGroup[-1].ItemIcon[-1].Setting.CustomModelData
# AnyNBT
    data modify entity @e[type=item,tag=HologramItem,distance=..0,y=300,limit=1] {} merge from storage hologram_ui: TextGroup[-1].ItemIcon[-1].Setting.NBT
# Offset.y
    tp @e[type=armor_stand,tag=HologramStand,tag=Init,distance=..0.001,y=300,limit=1] ~ ~ ~
    execute store result score $Move HologramUICore run data get storage hologram_ui: TextGroup[-1].ItemIcon[-1].Offset 10000
    execute if score $Move HologramUICore matches 50000.. run scoreboard players set $Move HologramUICore 49999
    execute if score $Move HologramUICore matches ..-50000 run scoreboard players set $Move HologramUICore -49999
    execute if score $Move HologramUICore matches 1.. as @e[type=armor_stand,tag=HologramStand,tag=Init,distance=..0.001,limit=1] rotated ~ -90 run function hologram_ui:core/generate/move/31
    execute if score $Move HologramUICore matches ..-1 run scoreboard players operation $Move HologramUICore *= $-1 HologramUICore
    execute if score $Move HologramUICore matches 1.. as @e[type=armor_stand,tag=HologramStand,tag=Init,distance=..0.001,limit=1] rotated ~ 90 run function hologram_ui:core/generate/move/31
# TagDelete
    tag @e[type=armor_stand,tag=HologramStand,tag=Init,distance=..5,limit=1] remove Init
# remove
    data remove storage hologram_ui: TextGroup[-1].ItemIcon[-1]