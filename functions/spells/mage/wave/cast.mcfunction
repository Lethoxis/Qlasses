
tag @a[tag=wave,scores={lc=1..}] add spawnProjectile
function code:misc/player_spawn_projectile
execute as @a[tag=wave,scores={lc=1..}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add wave
execute as @a[tag=wave,scores={lc=1..}] at @s run tp @e[tag=projectile,tag=wave,scores={life=0},sort=nearest,limit=1] ~ ~ ~ ~ 0

execute as @a[tag=wave,scores={lc=1..}] at @s run playsound item.bucket.empty_axolotl ambient @a ~ ~ ~ 2 .8
execute as @a[tag=wave,scores={lc=1..}] at @s run playsound item.bucket.empty_axolotl ambient @a ~ ~ ~ 2 .6
