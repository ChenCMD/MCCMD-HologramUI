#> example:menu/select
#
# ホログラムが選択された際の処理
#
# @within tag/function minecraft:select_hologram

execute if score @s HologramID matches 1 run function example:menu/1
execute if score @s HologramID matches 2 run function example:menu/2
execute if score @s HologramID matches 3 run say Hoge
execute if score @s HologramID matches 4 run say Fuga
execute if score @s HologramID matches 5 run say Piyo