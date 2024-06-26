
tag @a[scores={cast=201}] add spawnProjectile
function code:misc/player_spawn_projectile
execute as @a[scores={cast=201}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add splashback
execute as @a[scores={cast=201}] at @s run tp @e[tag=projectile,tag=splashback,x_rotation=-90..20,scores={life=0},sort=nearest,limit=1] ~ ~ ~ ~ 20

tag @a[scores={cast=201}] add spawnProjectile
function code:misc/player_spawn_projectile
execute as @a[scores={cast=201}] at @s run tag @e[tag=projectile,tag=!splashback,scores={life=0},sort=nearest,limit=1] add splashback_repulse
execute as @a[scores={cast=201}] at @s run tp @e[tag=projectile,tag=splashback_repulse,scores={life=0},sort=nearest,limit=1] ~ ~ ~ ~ 0

effect give @a[scores={cast=201}] slow_falling 1 0 true

execute as @a[scores={cast=201}] at @s run playsound item.bucket.empty_axolotl ambient @a ~ ~ ~ 2 .8
execute as @a[scores={cast=201}] at @s run playsound item.bucket.empty_lava ambient @a ~ ~ ~ 1 2
execute as @a[scores={cast=201}] at @s run playsound item.trident.riptide_3 ambient @a ~ ~ ~ 1 1.3
