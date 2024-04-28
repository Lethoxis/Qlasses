
tag @a[scores={cast=1902}] add spawnProjectile
function code:misc/player_spawn_projectile
execute as @a[scores={cast=1902}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add auto_warden
execute as @a[scores={cast=1902}] at @s positioned ~ ~1.4 ~ run tp @e[tag=projectile,scores={life=0},sort=nearest,limit=1] ^2 ^ ^2.2 ~-40 0


##### Sweep
function code:spells/swordsman/auto_warden/sweep
