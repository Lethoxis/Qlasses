
tag @a[scores={cast=1000}] add spawnProjectile
function code:misc/player_spawn_projectile
execute as @a[scores={cast=1000}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add enchanted_path
execute as @a[scores={cast=1000}] at @s run execute as @e[tag=projectile,tag=enchanted_path,scores={life=0},sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0

execute as @a[scores={cast=1000,auto=1900}] at @s run execute as @e[tag=projectile,tag=enchanted_path,scores={life=0},sort=nearest,limit=1] run tag @s add petals
execute as @a[scores={cast=1000,auto=1901}] at @s run execute as @e[tag=projectile,tag=enchanted_path,scores={life=0},sort=nearest,limit=1] run tag @s add star
execute as @a[scores={cast=1000,auto=1902}] at @s run execute as @e[tag=projectile,tag=enchanted_path,scores={life=0},sort=nearest,limit=1] run tag @s add warden

