
tag @e[tag=jolted] remove jolted


tag @a[tag=jolt,scores={lc=1..}] add spawnProjectile
tag @a[tag=jolt,scores={lc=1..}] add itemDisplay
function code:misc/player_spawn_projectile
execute as @a[tag=jolt,scores={lc=1..}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add jolt
execute as @a[tag=jolt,scores={lc=1..}] at @s run data merge entity @e[tag=projectile,scores={life=0},sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1.4f,1f,1f],translation:[0f,0f,0f],scale:[.4f,.4f,.4f]},item:{id:"minecraft:blaze_rod",Count:1b}}

scoreboard players set @e[tag=projectile,tag=jolt,scores={life=0}] random 3

execute as @a[tag=jolt,scores={lc=1..}] at @s run playsound block.copper_bulb.break ambient @a ~ ~ ~ 1.5 2
execute as @a[tag=jolt,scores={lc=1..}] at @s run playsound block.sand.step ambient @a ~ ~ ~ 1.5 2
