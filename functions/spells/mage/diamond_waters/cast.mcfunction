
tag @a[scores={cast=209}] add channeling

tag @a[scores={cast=209}] add spawnProjectile
function code:misc/player_spawn_projectile
execute as @a[scores={cast=209}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add diamond_waters
execute as @a[scores={cast=209}] at @s run tp @e[tag=projectile,scores={life=0},sort=nearest,limit=1] ~ ~1.3 ~ ~ 0


execute as @a[scores={cast=209}] at @s run playsound block.vault.open_shutter ambient @a ~ ~ ~ 2 2
execute as @a[scores={cast=209}] at @s run playsound item.bucket.empty_axolotl ambient @a ~ ~ ~ 2 .6
