
tag @a[scores={cast=203}] add channeling
tag @a[scores={cast=203}] add spawnProjectile
function code:misc/spawn_projectile
execute as @a[scores={cast=203}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add tsunami

execute as @a[scores={cast=203}] at @s run tp @e[tag=projectile,scores={life=0},sort=nearest,limit=1] ~ ~ ~ ~ 0
execute as @a[scores={cast=203}] at @s run scoreboard players set @e[tag=projectile,scores={life=0},sort=nearest,limit=1] life -55

execute as @a[scores={cast=203}] at @s run playsound item.bucket.empty_axolotl ambient @a ~ ~ ~ 2 .8
execute as @a[scores={cast=203}] at @s run playsound item.bucket.empty_axolotl ambient @a ~ ~ ~ 2 .6
