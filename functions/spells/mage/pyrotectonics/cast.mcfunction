
tag @a[tag=pyrotectonics,scores={lc=1..}] add spawnProjectile
function code:misc/spawn_projectile
execute as @a[tag=pyrotectonics,scores={lc=1..}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add pyrotectonics
execute as @a[tag=pyrotectonics,scores={lc=1..}] at @s run tp @e[tag=projectile,scores={life=0},sort=nearest,limit=1] ~ ~.2 ~ ~ 0

execute as @a[tag=pyrotectonics,scores={lc=1..}] at @s run playsound entity.blaze.hurt ambient @a ~ ~ ~ .4 0
execute as @a[tag=pyrotectonics,scores={lc=1..}] at @s run playsound entity.blaze.hurt ambient @a ~ ~ ~ .4 .7
execute as @a[tag=pyrotectonics,scores={lc=1..}] at @s run particle dust_color_transition 1 0 0 2 1 .7 0 ~ ~.1 ~ 1.2 0 1.2 0 250
execute as @a[tag=pyrotectonics,scores={lc=1..}] at @s run particle lava ~ ~.1 ~ 1.2 0 1.2 0 80
