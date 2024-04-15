
tag @a[scores={cast=303}] add spawnProjectile
tag @a[scores={cast=303}] add channeling
tag @a[scores={cast=303}] add blitz_dashing
function code:misc/spawn_projectile
execute as @a[scores={cast=303}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add blitz_dash
execute as @a[scores={cast=303}] at @s as @e[tag=projectile,tag=blitz_dash,scores={life=0},sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~ 0

execute as @a[scores={cast=303}] at @s run playsound block.beacon.activate ambient @a ~ ~ ~ 3 2
execute as @a[scores={cast=303}] at @s run playsound block.respawn_anchor.set_spawn ambient @a ~ ~ ~ 2 2
