#> hologram_ui:core/tick
# @within tag/function tick

execute at @a as @e[type=slime,tag=HologramInteractTarget, distance=..32] run data modify entity @s OnGround set value 0b
execute as @a[tag=HologramOperator] at @s if entity @e[type=slime,tag=HologramInteractTarget,distance=..30,limit=1] run function hologram_ui:core/cursor/main