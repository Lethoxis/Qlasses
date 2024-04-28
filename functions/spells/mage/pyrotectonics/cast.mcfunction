
tag @a[scores={cast=4}] add spawnProjectile
function code:misc/spawn_projectile
execute as @a[scores={cast=4}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add pyrotectonics
execute as @a[scores={cast=4}] at @s run tp @e[tag=projectile,scores={life=0},sort=nearest,limit=1] ~ ~.2 ~ ~ 0

execute as @a[scores={cast=4}] at @s run playsound entity.blaze.hurt ambient @a ~ ~ ~ .4 0
execute as @a[scores={cast=4}] at @s run playsound entity.blaze.hurt ambient @a ~ ~ ~ .4 .7
execute as @a[scores={cast=4}] at @s run particle dust_color_transition{from_color:[1.0, 0.0, 0.0], scale:2, to_color:[1.0, .7, 0.0]} ~ ~.1 ~ 1.2 0 1.2 0 250
execute as @a[scores={cast=4}] at @s run particle lava ~ ~.1 ~ 1.2 0 1.2 0 80
