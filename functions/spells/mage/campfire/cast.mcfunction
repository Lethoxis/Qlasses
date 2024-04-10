
tag @a[tag=campfire,scores={lc=1..}] add spawnProjectile
tag @a[tag=campfire,scores={lc=1..}] add blockDisplay
function code:misc/player_spawn_projectile
execute as @a[tag=campfire,scores={lc=1..}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add campfire
execute as @a[tag=campfire,scores={lc=1..}] at @s run summon marker ~ ~ ~ {Tags:["passenger","campfire_vfx","new"]}
execute as @a[tag=campfire,scores={lc=1..}] at @s run ride @e[tag=campfire_vfx,tag=new,sort=nearest,limit=1] mount @e[tag=projectile,tag=campfire,scores={life=0},sort=nearest,limit=1]
tag @e[tag=campfire_vfx,tag=new] remove new
execute as @a[tag=campfire,scores={lc=1..}] at @s run execute as @e[tag=projectile,scores={life=0},sort=nearest,limit=1] run data merge entity @s {block_state:{Name:"minecraft:campfire"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]}}

execute as @a[tag=campfire,scores={lc=1..}] at @s run playsound entity.blaze.shoot ambient @a ~ ~ ~ .4 0
execute as @a[tag=campfire,scores={lc=1..}] at @s run playsound item.book.page_turn ambient @a ~ ~ ~ 3 .8
execute as @a[tag=campfire,scores={lc=1..}] at @s run playsound item.book.page_turn ambient @a ~ ~ ~ 3 1
execute as @a[tag=campfire,scores={lc=1..}] at @s run playsound item.book.page_turn ambient @a ~ ~ ~ 3 1.2

# Place on ground
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1

execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[type=!player,tag=campfire,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~


execute as @e[type=!player,tag=campfire,scores={life=0}] at @s align y run tp @s ~ ~ ~ 0 0
execute as @e[type=!player,tag=campfire,scores={life=0}] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @e[type=!player,tag=campfire,scores={life=0}] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~

