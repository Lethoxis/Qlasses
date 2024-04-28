
tag @a[scores={cast=109}] add spawnProjectile
function code:misc/spawn_projectile
execute as @a[scores={cast=109}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add himalaya

execute as @a[scores={cast=109}] at @s run playsound entity.generic.eat ambient @a ~ ~ ~ 1 0
execute as @a[scores={cast=109}] at @s run playsound block.ancient_debris.break ambient @a ~ ~ ~ 1 0

execute as @e[tag=projectile,tag=himalaya,scores={life=0}] at @s run tp @s ^ ^ ^1 ~ 0
