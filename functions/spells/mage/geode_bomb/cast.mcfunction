
tag @a[tag=geode_bomb,scores={lc=1..}] add spawnProjectile
tag @a[tag=geode_bomb,scores={lc=1..}] add blockDisplay
function code:misc/player_spawn_projectile
execute as @a[tag=geode_bomb,scores={lc=1..}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add geode_bomb
execute as @a[tag=geode_bomb,scores={lc=1..}] at @s run tp @e[tag=projectile,tag=geode_bomb,scores={life=0},sort=nearest,limit=1] ~ ~1.2 ~ ~ ~-30
execute as @a[tag=geode_bomb,scores={lc=1..}] at @s run execute as @e[tag=projectile,tag=geode_bomb,scores={life=0},sort=nearest,limit=1] run data merge entity @s {block_state:{Name:"minecraft:calcite"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.25f,-.25f,-.25f],scale:[0.5f,0.5f,0.5f]}}

execute as @a[tag=geode_bomb,scores={lc=1..}] at @s run playsound block.calcite.break ambient @a ~ ~ ~ 1 0
execute as @a[tag=geode_bomb,scores={lc=1..}] at @s run playsound item.trident.throw ambient @a ~ ~ ~ .5 .5
execute as @a[tag=geode_bomb,scores={lc=1..}] at @s run playsound block.basalt.place ambient @a ~ ~ ~ 1 1.3