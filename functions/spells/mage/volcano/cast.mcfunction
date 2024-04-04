
tag @a[tag=volcano,scores={lc=1..}] add spawnProjectile
function code:misc/player_spawn_projectile
execute as @a[tag=volcano,scores={lc=1..}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add volcano


# Place on ground
execute as @e[type=!player,tag=volcano,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=volcano,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=volcano,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=volcano,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=volcano,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=volcano,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=volcano,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=volcano,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=volcano,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=volcano,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=volcano,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=volcano,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=volcano,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=volcano,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=volcano,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=volcano,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=volcano,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=volcano,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=volcano,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=volcano,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=volcano,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=volcano,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=volcano,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=volcano,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=volcano,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=volcano,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=volcano,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=volcano,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=volcano,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=volcano,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=volcano,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=volcano,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=volcano,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=volcano,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed

kill @e[type=!player,tag=volcano,tag=!placed]

execute as @e[type=!player,tag=volcano,scores={life=0}] at @s align y run tp @s ~ ~ ~ 0 0
execute as @e[type=!player,tag=volcano,scores={life=0}] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @e[type=!player,tag=volcano,scores={life=0}] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~

