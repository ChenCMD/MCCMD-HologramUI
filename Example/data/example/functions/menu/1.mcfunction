#> example:menu/1
#
# Menu1を生成する
#
# @within function
#   example:menu/select
#   example:menu/init

# 既存のホログラムを消す
    kill @e[tag=Hologram]
# 設計図を突っ込む
    data modify storage hologram_ui: TextGroup set value []
    data modify storage hologram_ui: TextGroup append value {Offset:[2.6,1.25],HologramID:2,Setting:{TextAlign:"Center",TextInterpret:true},Text:['{"text":"O","color":"gray"}','{"text":"P","color":"gray"}','{"text":"E","color":"gray"}','{"text":"N","color":"gray"}']}
    data modify storage hologram_ui: TextGroup append value {Offset:[3.4,1.25],HologramID:1,Setting:{TextAlign:"Center",TextInterpret:true,Selectable:false},Text:['{"text":"C"}','{"text":"L"}','{"text":"O"}','{"text":"S"}','{"text":"E"}']}
# 生成
    execute positioned 10.0 10.0 10.2 rotated -90 0 run function hologram_ui:api/create