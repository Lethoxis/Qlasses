
tag @a[tag=pyrotectonics,scores={lc=1..}] add spawnProjectile
function code:misc/spawn_projectile
execute as @a[tag=pyrotectonics,scores={lc=1..}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add pyrotectonics
execute as @a[tag=pyrotectonics,scores={lc=1..}] at @s run tp @e[tag=projectile,scores={life=0},sort=nearest,limit=1] ~ ~.2 ~ ~ 0

execute as @a[tag=pyrotectonics,scores={lc=1..}] at @s run playsound entity.blaze.shoot ambient @a ~ ~ ~ 1 0
execute as @a[tag=pyrotectonics,scores={lc=1..}] at @s run playsound entity.blaze.hurt ambient @a ~ ~ ~ .4 0
