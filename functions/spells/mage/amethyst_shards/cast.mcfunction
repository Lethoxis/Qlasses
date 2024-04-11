
tag @a[scores={cast=10}] add spawnProjectile
tag @a[scores={cast=10}] add blockDisplay
function code:misc/player_spawn_projectile
execute as @a[scores={cast=10}] at @s run execute as @e[tag=projectile,tag=!init,scores={life=0},sort=nearest,limit=1] at @s run tp @s ^.5 ^ ^-1.2
execute as @a[scores={cast=10}] at @s run tag @e[tag=projectile,tag=!init,scores={life=0},sort=nearest,limit=1] add init

tag @a[scores={cast=10}] add spawnProjectile
tag @a[scores={cast=10}] add blockDisplay
function code:misc/player_spawn_projectile
execute as @a[scores={cast=10}] at @s run execute as @e[tag=projectile,tag=!init,scores={life=0},sort=nearest,limit=1] at @s run tp @s ^.12 ^.45 ^-.6
execute as @a[scores={cast=10}] at @s run tag @e[tag=projectile,tag=!init,scores={life=0},sort=nearest,limit=1] add init

tag @a[scores={cast=10}] add spawnProjectile
tag @a[scores={cast=10}] add blockDisplay
function code:misc/player_spawn_projectile
execute as @a[scores={cast=10}] at @s run execute as @e[tag=projectile,tag=!init,scores={life=0},sort=nearest,limit=1] at @s run tp @s ^.12 ^-.45 ^1.2
execute as @a[scores={cast=10}] at @s run tag @e[tag=projectile,tag=!init,scores={life=0},sort=nearest,limit=1] add init

tag @a[scores={cast=10}] add spawnProjectile
tag @a[scores={cast=10}] add blockDisplay
function code:misc/player_spawn_projectile
execute as @a[scores={cast=10}] at @s run execute as @e[tag=projectile,tag=!init,scores={life=0},sort=nearest,limit=1] at @s run tp @s ^-.4 ^.25 ^0
execute as @a[scores={cast=10}] at @s run tag @e[tag=projectile,tag=!init,scores={life=0},sort=nearest,limit=1] add init

tag @a[scores={cast=10}] add spawnProjectile
tag @a[scores={cast=10}] add blockDisplay
function code:misc/player_spawn_projectile
execute as @a[scores={cast=10}] at @s run execute as @e[tag=projectile,tag=!init,scores={life=0},sort=nearest,limit=1] at @s run tp @s ^-.4 ^-.25 ^.6
execute as @a[scores={cast=10}] at @s run tag @e[tag=projectile,tag=!init,scores={life=0},sort=nearest,limit=1] add init




execute as @a[scores={cast=10}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=5] add amethyst_shards
execute as @a[scores={cast=10}] at @s run execute as @e[tag=projectile,scores={life=0},sort=nearest,limit=5] run data merge entity @s {block_state:{Name:"minecraft:small_amethyst_bud"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.71f,0f,0f,1f],translation:[-0.4f,0.4f,0f],scale:[0.5f,0.5f,0.5f]}}

execute as @a[scores={cast=10}] at @s run playsound block.amethyst_block.step ambient @a ~ ~ ~ 1 1
