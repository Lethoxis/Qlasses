
tag @a[scores={cast=20}] add spawnProjectile
function code:misc/player_spawn_projectile
execute as @a[scores={cast=20}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add wave
execute as @a[scores={cast=20}] at @s run tp @e[tag=projectile,tag=wave,scores={life=0},sort=nearest,limit=1] ~ ~ ~ ~ 0

execute as @a[scores={cast=20}] at @s run playsound item.bucket.empty_axolotl ambient @a ~ ~ ~ 2 .8
execute as @a[scores={cast=20}] at @s run playsound item.bucket.empty_axolotl ambient @a ~ ~ ~ 2 .6
