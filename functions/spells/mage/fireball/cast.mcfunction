
tag @a[scores={cast=0}] add spawnProjectile
tag @a[scores={cast=0}] add itemDisplay
function code:misc/player_spawn_projectile
execute as @a[scores={cast=0}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add fireball
execute as @a[scores={cast=0}] at @s run data merge entity @e[tag=projectile,scores={life=0},sort=nearest,limit=1] {item:{id:"minecraft:fire_charge",Count:1b},item_display:"ground"}

execute as @a[scores={cast=0}] at @s run playsound entity.blaze.shoot ambient @a ~ ~ ~ 1 1.4
