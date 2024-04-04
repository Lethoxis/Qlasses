
# Call this function after tagging an entity with 'spawnProjectile'
# Add tag 'itemDisplay' to spawn an item display instead of an armor stand
# Add tag 'blockDisplay' to spawn an item display instead of an armor stand

execute as @e[tag=spawnProjectile,tag=!itemDisplay,tag=!blockDisplay] at @s run summon marker ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["new","projectile","hasLife"]}
execute as @e[tag=spawnProjectile,tag=itemDisplay] at @s run summon item_display ~ ~ ~ {Invulnerable:1b,Tags:["new","projectile","hasLife"]}
execute as @e[tag=spawnProjectile,tag=blockDisplay] at @s run summon block_display ~ ~ ~ {Invulnerable:1b,Tags:["new","projectile","hasLife"]}

execute as @e[tag=spawnProjectile] at @s run tp @e[tag=projectile,tag=new,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=spawnProjectile] at @s run scoreboard players operation @e[tag=projectile,tag=new,sort=nearest,limit=1] id = @s id

scoreboard players set @e[tag=projectile,tag=new] life 0

tag @e[tag=projectile,tag=new] remove new
tag @e[tag=spawnProjectile] remove spawnProjectile
tag @e[tag=itemDisplay] remove itemDisplay
tag @e[tag=blockDisplay] remove blockDisplay
