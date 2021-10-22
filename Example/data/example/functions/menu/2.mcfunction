#> example:menu/2
#
# Menu2を生成する
#
# @within function example:menu/select

# 既存のホログラムを消す
    kill @e[tag=Hologram]
# 設計図を突っ込む
    data modify storage hologram_ui: TextGroup set value []
    data modify storage hologram_ui: TextGroup append value {Offset:[2.3,1.75],HologramID:3,Setting:{TextAlign:"Center"},Text:[H,o,g,e]}
    data modify storage hologram_ui: TextGroup append value {Offset:[3.0,1.75],HologramID:4,Setting:{TextAlign:"Center"},Text:[F,u,g,a]}
    data modify storage hologram_ui: TextGroup append value {Offset:[3.7,1.75],HologramID:5,Setting:{TextAlign:"Center"},Text:[P,i,y,o]}
    data modify storage hologram_ui: TextGroup append value {Offset:[2.6,1.25],HologramID:2,Setting:{TextAlign:"Center",TextInterpret:true,Selectable:false},Text:['{"text":"O"}','{"text":"P"}','{"text":"E"}','{"text":"N"}']}
    data modify storage hologram_ui: TextGroup append value {Offset:[3.4,1.25],HologramID:1,Setting:{TextAlign:"Center",TextInterpret:true},Text:['{"text":"C","color":"gray"}','{"text":"L","color":"gray"}','{"text":"O","color":"gray"}','{"text":"S","color":"gray"}','{"text":"E","color":"gray"}']}
# 生成
    execute positioned 10.0 10.0 10.2 rotated -90 0 run function hologram_ui:api/create