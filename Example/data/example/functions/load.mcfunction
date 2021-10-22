#> example:load
#
# 初回読み込み時にホログラムとその当たり判定を召喚する関数
# この関数はデータパックの読み込み時に実行される
#
# @within tag/function minecraft:load

execute unless entity @e[tag=Hologram,limit=1] run function example:menu/init
team add NoCollision
team modify NoCollision collisionRule never