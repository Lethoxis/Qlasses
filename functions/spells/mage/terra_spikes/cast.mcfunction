
tag @a[scores={cast=108}] add spawnProjectile
function code:misc/spawn_projectile
execute as @a[scores={cast=108}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add terra_spikes
execute as @a[scores={cast=108,sneak=1..}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add large

execute as @a[scores={cast=108}] at @s run playsound entity.generic.eat ambient @a ~ ~ ~ 1 2
execute as @a[scores={cast=108}] at @s run playsound ui.loom.select_pattern ambient @a ~ ~ ~ 1 2

execute as @e[tag=projectile,tag=stonefall_deluge,scores={life=0}] at @s run tp @s ~ ~ ~ ~ 0
