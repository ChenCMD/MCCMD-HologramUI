#> hologram_ui:core/cursor/main
# @within function hologram_ui:core/tick

#> Private
# @private
#declare tag this

scoreboard players reset @s HologramID
execute anchored eyes positioned ^ ^ ^ run function hologram_ui:core/cursor/recursive
tag @s add this
execute as @e[type=slime,tag=HologramCollider,distance=..30] if score @s HologramID = @a[tag=this,distance=..0,limit=1] HologramID at @s run function hologram_ui:core/cursor/particle
tag @s remove this
tag @s remove HologramOperator