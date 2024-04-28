
tag @a[scores={cast=111}] add spawnProjectile
tag @a[scores={cast=111}] add blockDisplay
function code:misc/player_spawn_projectile
execute as @a[scores={cast=111}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add fuji

# Place on ground
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1

execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=fuji,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~

execute as @e[tag=projectile,tag=fuji,scores={life=0}] at @s run playsound entity.warden.emerge ambient @a ~ ~ ~ 2 0


execute as @e[tag=projectile,tag=fuji,scores={life=0}] at @s align y run tp @s ~ ~ ~ ~ 0
execute as @e[tag=projectile,tag=fuji,scores={life=0}] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @e[tag=projectile,tag=fuji,scores={life=0}] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
