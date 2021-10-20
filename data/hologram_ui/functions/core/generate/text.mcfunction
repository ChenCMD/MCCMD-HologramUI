#> hologram_ui:core/generate/text
# @within function hologram_ui:core/generate/base

# ベース召喚summon
    summon armor_stand ~ ~ ~ {CustomName:'""',CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["Hologram","HologramChar"]}
# HologramID
    execute store result score @e[type=armor_stand,tag=HologramChar,distance=..0.0001,limit=1] HologramID run data get storage hologram_ui: TextGroup[-1].HologramID
# resolve
    execute if data storage hologram_ui: TextGroup[-1].Setting{TextInterpret:0b} run loot spawn ~ 300 ~ loot hologram_ui:generate/resolve
    execute if data storage hologram_ui: TextGroup[-1].Setting{TextInterpret:1b} run loot spawn ~ 300 ~ loot hologram_ui:generate/resolve.i
# Name
    data modify entity @e[type=armor_stand,tag=HologramChar,distance=..0.0001,limit=1] CustomName set from entity @e[type=item,distance=..0,y=300,limit=1] Item.tag.display.Lore[-1]
# resolveItem kill
    kill @e[type=item,distance=..0,y=300,limit=1]