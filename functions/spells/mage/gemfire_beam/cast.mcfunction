
tag @a[scores={cast=16}] add spawnProjectile
function code:misc/player_spawn_projectile
execute as @a[scores={cast=16}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add gemfire_beam

execute as @a[scores={cast=16}] at @s run playsound item.trident.return ambient @a ~ ~ ~ 1 .8
execute as @a[scores={cast=16}] at @s run playsound item.trident.return ambient @a ~ ~ ~ 1 1
execute as @a[scores={cast=16}] at @s run playsound item.trident.return ambient @a ~ ~ ~ 1 1.5
