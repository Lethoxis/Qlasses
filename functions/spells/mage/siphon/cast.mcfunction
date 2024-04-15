
tag @a[scores={cast=202}] add spawnProjectile
function code:misc/player_spawn_projectile
execute as @a[scores={cast=202}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add siphon

execute as @a[scores={cast=202}] at @s run playsound entity.axolotl.swim ambient @a ~ ~ ~ 2 0
execute as @a[scores={cast=202}] at @s run playsound item.trident.throw ambient @a ~ ~ ~ .6 0
execute as @a[scores={cast=202}] at @s run playsound entity.skeleton.converted_to_stray ambient @a ~ ~ ~ 3 0
execute as @a[scores={cast=202}] at @s run playsound entity.cat.hiss ambient @a ~ ~ ~ 1 2

# Place on ground
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1

execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=siphon,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~


execute as @e[tag=projectile,tag=siphon,scores={life=0}] at @s align y run tp @s ~ ~ ~ 0 0
execute as @e[tag=projectile,tag=siphon,scores={life=0}] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @e[tag=projectile,tag=siphon,scores={life=0}] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
