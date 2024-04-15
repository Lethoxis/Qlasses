
tag @a[scores={cast=205}] add channeling

tag @a[scores={cast=205}] add spawnProjectile
function code:misc/spawn_projectile
execute as @a[scores={cast=205}] at @s run tag @e[tag=projectile,tag=!twinstream,scores={life=0},sort=nearest,limit=1] add left
execute as @a[scores={cast=205}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add twinstream

tag @a[scores={cast=205}] add spawnProjectile
function code:misc/spawn_projectile
execute as @a[scores={cast=205}] at @s run tag @e[tag=projectile,tag=!left,scores={life=0},sort=nearest,limit=1] add right
execute as @a[scores={cast=205}] at @s run tag @e[tag=projectile,tag=right,scores={life=0},sort=nearest,limit=1] add twinstream


execute as @e[tag=projectile,tag=twinstream,tag=left,scores={life=0}] at @s at @a[scores={cast=205},sort=nearest,limit=1] positioned ~ ~1.35 ~ run tp @s ^.65 ^ ^ ~ 0
execute as @e[tag=projectile,tag=twinstream,tag=right,scores={life=0}] at @s at @a[scores={cast=205},sort=nearest,limit=1] positioned ~ ~1.35 ~ run tp @s ^-.65 ^ ^ ~ 0



execute as @a[scores={cast=205}] at @s run playsound block.vault.open_shutter ambient @a ~ ~ ~ 2 2
execute as @a[scores={cast=205}] at @s run playsound item.bucket.empty_axolotl ambient @a ~ ~ ~ 2 .6
