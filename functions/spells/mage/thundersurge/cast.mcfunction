
tag @a[scores={cast=301}] add spawnProjectile
function code:misc/player_spawn_projectile
execute as @a[scores={cast=301}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add thundersurge


# Place on ground
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=thundersurge,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed

execute as @e[tag=projectile,tag=thundersurge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=thundersurge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=thundersurge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=thundersurge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=thundersurge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=thundersurge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=thundersurge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=thundersurge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=thundersurge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=thundersurge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=thundersurge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=thundersurge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~

# Complete with code from other spells of this type

execute as @e[type=!player,tag=thundersurge,scores={life=0}] at @s align y run tp @s ~ ~ ~ 0 0
execute as @e[type=!player,tag=thundersurge,scores={life=0}] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @e[type=!player,tag=thundersurge,scores={life=0}] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~

