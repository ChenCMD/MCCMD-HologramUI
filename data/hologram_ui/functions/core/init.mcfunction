#> hologram_ui:core/init
# @within tag/function load

#> 処理用
# @within hologram_ui:**
    #declare function array_util:api/reverse
    #declare storage array_util:
    #declare tag HologramItem
    #declare tag HologramCollider
    #declare tag HologramStand
    #declare tag HologramChar
    #alias entity Marker 0-a-17a7-4-0
    scoreboard objectives add HologramUICore dummy
scoreboard players set $-1 HologramUICore -1
scoreboard players set $2 HologramUICore 2

forceload add 0 0

#> HologramUI
# TextGroup[] テキストデータ
# @api
#declare storage hologram_ui:

#> HologramUI
# ホログラムを操作可能なプレイヤーに毎tick付与
# @api
#declare tag HologramOperator

#> HologramUI
# ホログラムの当たり判定となるスライム
# @api
#declare tag HologramInteractTarget

#> HologramUI
# ホログラムが殴られた際に選択されているホログラムIDが記録されています。
# @api
scoreboard objectives add HologramID dummy

#> ホログラムの実体Entity
# @api
#declare tag Hologram

execute unless data storage hologram_ui: Install run data merge storage hologram_ui: {TextGroup:[],Install:1b}
execute unless entity 0-a-17a7-4-0 run summon marker 0 0 0 {UUID:[I; 0, 661415, 262144, 0]}