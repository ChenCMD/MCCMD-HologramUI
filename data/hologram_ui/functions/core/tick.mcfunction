#> hologram_ui:core/tick
# @within tag/function tick

execute as @e[type=slime,tag=HologramInteractTarget] run data modify entity @s OnGround set value 0b
execute as @a[tag=HologramOperator] at @s run function hologram_ui:core/cursor/main