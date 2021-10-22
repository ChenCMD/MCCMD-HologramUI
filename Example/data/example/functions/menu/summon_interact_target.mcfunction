#> example:menu/summon_interact_target
#
# ホログラムの当たり判定を召喚する関数
#
# @within function example:menu/init

execute as @e[tag=HologramInteractTarget] at @s run tp @s ~ ~-200 ~
summon minecraft:slime 13.0 10.0 11.2 {Tags:["HologramInteractTarget"],Size:4,NoAI:1b,Silent:1b,PersistenceRequired:1b,Team:"NoCollision",ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b},{Id:11b,Amplifier:4b,Duration:19999980,ShowParticles:0b}]}