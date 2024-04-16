
tag @a[scores={cast=6}] add spawnProjectile
function code:misc/spawn_projectile
execute as @a[scores={cast=6}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add hellfire_shackles
execute as @a[scores={cast=6}] at @s run tp @e[tag=projectile,tag=hellfire_shackles,scores={life=0},sort=nearest,limit=1] ~ ~.1 ~ ~ 0

execute as @a[scores={cast=6}] at @s run playsound item.trident.thunder ambient @a ~ ~ ~ 1 1.6
