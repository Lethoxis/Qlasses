
tag @a[scores={cast=105}] add spawnProjectile
tag @a[scores={cast=105}] add blockDisplay
function code:misc/player_spawn_projectile
execute as @a[scores={cast=105}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add earthwall
execute as @a[scores={cast=105}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add central


############### Place on ground
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1

execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=earthwall,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~

execute as @e[tag=projectile,tag=earthwall,scores={life=0}] at @s align y run tp @s ~ ~ ~ ~ 0
execute as @e[tag=projectile,tag=earthwall,scores={life=0}] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @e[tag=projectile,tag=earthwall,scores={life=0}] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~


############### Place other wall pieces
tag @e[tag=projectile,tag=earthwall,tag=central,scores={life=0}] add spawnProjectile
tag @e[tag=projectile,tag=earthwall,tag=central,scores={life=0}] add blockDisplay
function code:misc/spawn_projectile
tag @e[tag=projectile,tag=earthwall,tag=central,scores={life=0}] add spawnProjectile
tag @e[tag=projectile,tag=earthwall,tag=central,scores={life=0}] add blockDisplay
function code:misc/spawn_projectile
tag @e[tag=projectile,tag=earthwall,tag=central,scores={life=0}] add spawnProjectile
tag @e[tag=projectile,tag=earthwall,tag=central,scores={life=0}] add blockDisplay
function code:misc/spawn_projectile
tag @e[tag=projectile,tag=earthwall,tag=central,scores={life=0}] add spawnProjectile
tag @e[tag=projectile,tag=earthwall,tag=central,scores={life=0}] add blockDisplay
function code:misc/spawn_projectile

execute as @e[tag=projectile,tag=earthwall,tag=central,scores={life=0}] at @s run tag @e[tag=projectile,tag=!earthwall,scores={life=0},sort=nearest,limit=4] add earthwall
execute as @e[tag=projectile,tag=earthwall,scores={life=0}] run data merge entity @s {block_state:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"frustum"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-3f,-1.5f],scale:[3f,3f,3f]}}

execute as @e[tag=projectile,tag=earthwall,tag=central,scores={life=0}] at @s run tp @e[tag=projectile,tag=earthwall,tag=!central,scores={life=0},sort=nearest,limit=1] ^1.5 ^ ^
execute as @e[tag=projectile,tag=earthwall,tag=central,scores={life=0}] at @s run tp @e[tag=projectile,tag=earthwall,tag=!central,scores={life=0},sort=nearest,limit=1] ^3 ^ ^
execute as @e[tag=projectile,tag=earthwall,tag=central,scores={life=0}] at @s run tp @e[tag=projectile,tag=earthwall,tag=!central,scores={life=0},sort=nearest,limit=1] ^-1.5 ^ ^
execute as @e[tag=projectile,tag=earthwall,tag=central,scores={life=0}] at @s run tp @e[tag=projectile,tag=earthwall,tag=!central,scores={life=0},sort=nearest,limit=1] ^-3 ^ ^

