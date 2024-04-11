
tag @a[scores={cast=3}] add spawnProjectile
function code:misc/player_spawn_projectile
execute as @a[scores={cast=3}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add blaze_rampart
execute as @a[scores={cast=3}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add central

execute as @a[scores={cast=3}] at @s run playsound entity.blaze.shoot ambient @a ~ ~ ~ .4 0


############### Place on ground
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s run particle smoke ~ ~ ~ .1 .1 .1 0 10
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s run particle smoke ~ ~ ~ .1 .1 .1 0 10
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s run particle smoke ~ ~ ~ .1 .1 .1 0 10
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s run particle smoke ~ ~ ~ .1 .1 .1 0 10
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s run particle smoke ~ ~ ~ .1 .1 .1 0 10
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s run particle smoke ~ ~ ~ .1 .1 .1 0 10
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s run particle smoke ~ ~ ~ .1 .1 .1 0 10
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s run tp @s ^ ^ ^1

execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=blaze_rampart,tag=!placed,scores={life=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~

execute as @e[tag=projectile,tag=blaze_rampart,scores={life=0}] at @s align y run tp @s ~ ~ ~ ~ 0
execute as @e[tag=projectile,tag=blaze_rampart,scores={life=0}] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @e[tag=projectile,tag=blaze_rampart,scores={life=0}] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~


############### Place other wall pieces
tag @e[tag=projectile,tag=blaze_rampart,tag=central,scores={life=0}] add spawnProjectile
function code:misc/spawn_projectile
tag @e[tag=projectile,tag=blaze_rampart,tag=central,scores={life=0}] add spawnProjectile
function code:misc/spawn_projectile
tag @e[tag=projectile,tag=blaze_rampart,tag=central,scores={life=0}] add spawnProjectile
function code:misc/spawn_projectile
tag @e[tag=projectile,tag=blaze_rampart,tag=central,scores={life=0}] add spawnProjectile
function code:misc/spawn_projectile

execute as @e[tag=projectile,tag=blaze_rampart,tag=central,scores={life=0}] at @s run tag @e[tag=projectile,tag=!blaze_rampart,scores={life=0},sort=nearest,limit=4] add blaze_rampart

execute as @e[tag=projectile,tag=blaze_rampart,tag=central,scores={life=0}] at @s run tp @e[tag=projectile,tag=blaze_rampart,tag=!central,scores={life=0},sort=nearest,limit=1] ^2 ^ ^
execute as @e[tag=projectile,tag=blaze_rampart,tag=central,scores={life=0}] at @s run tp @e[tag=projectile,tag=blaze_rampart,tag=!central,scores={life=0},sort=nearest,limit=1] ^4 ^ ^
execute as @e[tag=projectile,tag=blaze_rampart,tag=central,scores={life=0}] at @s run tp @e[tag=projectile,tag=blaze_rampart,tag=!central,scores={life=0},sort=nearest,limit=1] ^-2 ^ ^
execute as @e[tag=projectile,tag=blaze_rampart,tag=central,scores={life=0}] at @s run tp @e[tag=projectile,tag=blaze_rampart,tag=!central,scores={life=0},sort=nearest,limit=1] ^-4 ^ ^

