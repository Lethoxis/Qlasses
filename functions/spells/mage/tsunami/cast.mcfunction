
tag @a[tag=tsunami,scores={lc=1..}] add channeling
tag @a[tag=tsunami,scores={lc=1..}] add spawnProjectile
function code:misc/spawn_projectile
execute as @a[tag=tsunami,scores={lc=1..}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add tsunami

execute as @a[tag=tsunami,scores={lc=1..}] at @s run tp @e[tag=projectile,scores={life=0},sort=nearest,limit=1] ~ ~ ~ ~ 0
execute as @a[tag=tsunami,scores={lc=1..}] at @s run scoreboard players set @e[tag=projectile,scores={life=0},sort=nearest,limit=1] life -55

execute as @a[tag=tsunami,scores={lc=1..}] at @s run playsound item.bucket.empty_axolotl ambient @a ~ ~ ~ 2 .8
execute as @a[tag=tsunami,scores={lc=1..}] at @s run playsound item.bucket.empty_axolotl ambient @a ~ ~ ~ 2 .6
