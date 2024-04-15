
tag @a[scores={cast=208}] add spawnProjectile
tag @a[scores={cast=208}] add blockDisplay
function code:misc/player_spawn_projectile
execute as @a[scores={cast=208}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add bubble_bind
execute as @a[scores={cast=208}] at @s run tp @e[tag=projectile,tag=bubble_bind,scores={life=0},sort=nearest,limit=1] ~ ~1.2 ~ ~ ~-30
execute as @a[scores={cast=208}] at @s run execute as @e[tag=projectile,tag=bubble_bind,scores={life=0},sort=nearest,limit=1] run data merge entity @s {block_state:{Name:"minecraft:glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-1.5f,-1.5f],scale:[3f,3f,3f]}}

execute as @a[scores={cast=208}] at @s run playsound entity.player.hurt_drown ambient @a ~ ~ ~ .8 2
execute as @a[scores={cast=208}] at @s run playsound entity.player.attack.weak ambient @a ~ ~ ~ .8 2