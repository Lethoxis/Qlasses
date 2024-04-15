
tag @a[scores={cast=104}] add spawnProjectile
tag @a[scores={cast=104}] add itemDisplay
function code:misc/player_spawn_projectile
execute as @a[scores={cast=104}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add stonefall_deluge
execute as @a[scores={cast=104}] at @s run summon marker ~ ~ ~ {Tags:["passenger","stonefall_deluge_vfx","new","hasLife"]}
execute as @e[tag=stonefall_deluge_vfx,tag=new] at @s run ride @s mount @e[tag=projectile,tag=stonefall_deluge,scores={life=0},sort=nearest,limit=1]
tag @e[tag=stonefall_deluge_vfx,tag=new] remove new

execute as @a[scores={cast=104}] at @s run playsound entity.generic.eat ambient @a ~ ~ ~ 1 0
execute as @a[scores={cast=104}] at @s run playsound ui.loom.select_pattern ambient @a ~ ~ ~ 1 0

# Place on ground
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1

execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=stonefall_deluge,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~


execute as @e[tag=projectile,tag=stonefall_deluge,scores={life=0}] at @s align y run tp @s ~ ~ ~ 0 0
execute as @e[tag=projectile,tag=stonefall_deluge,scores={life=0}] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @e[tag=projectile,tag=stonefall_deluge,scores={life=0}] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
