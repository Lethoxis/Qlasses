
tag @a[scores={cast=102}] add spawnProjectile
tag @a[scores={cast=102}] add itemDisplay
function code:misc/player_spawn_projectile


execute as @a[scores={cast=102}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add amethyst_heart
execute as @a[scores={cast=102}] at @s run summon marker ~ ~ ~ {Tags:["passenger","amethyst_heart_vfx","new"]}
execute as @a[scores={cast=102}] at @s run ride @e[tag=amethyst_heart_vfx,tag=new,sort=nearest,limit=1] mount @e[tag=projectile,tag=amethyst_heart,scores={life=0},sort=nearest,limit=1]
tag @e[tag=amethyst_heart_vfx,tag=new] remove new
execute as @a[scores={cast=102}] at @s run execute as @e[tag=projectile,scores={life=0},sort=nearest,limit=1] run data merge entity @s {interpolation_duration:1,transformation:{left_rotation:[-.5f,0f,0f,1f],right_rotation:[0f,0f,.5f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:amethyst_block",Count:1b}}

execute as @e[tag=projectile,tag=amethyst_heart,scores={life=0}] at @s run particle end_rod ~ ~ ~ .3 .7 .3 0 20
execute as @e[tag=projectile,tag=amethyst_heart,scores={life=0}] at @s run tp @s ~ ~2 ~
execute as @e[tag=projectile,tag=amethyst_heart,scores={life=0}] at @s run particle end_rod ~ ~ ~ .3 .7 .3 0 20
execute as @e[tag=projectile,tag=amethyst_heart,scores={life=0}] at @s run tp @s ~ ~2 ~
execute as @e[tag=projectile,tag=amethyst_heart,scores={life=0}] at @s run particle end_rod ~ ~ ~ .3 .7 .3 .05 20
execute as @e[tag=projectile,tag=amethyst_heart,scores={life=0}] at @s run tp @s ~ ~2 ~
execute as @e[tag=projectile,tag=amethyst_heart,scores={life=0}] at @s run particle end_rod ~ ~ ~ .3 .7 .3 .1 20
execute as @e[tag=projectile,tag=amethyst_heart,scores={life=0}] at @s run tp @s ~ ~2 ~
execute as @e[tag=projectile,tag=amethyst_heart,scores={life=0}] at @s run particle end_rod ~ ~ ~ .3 .7 .3 .15 20
execute as @e[tag=projectile,tag=amethyst_heart,scores={life=0}] at @s run tp @s ~ ~2 ~
execute as @e[tag=projectile,tag=amethyst_heart,scores={life=0}] at @s run particle end_rod ~ ~ ~ .3 .7 .3 .3 50

######## VSFX

execute as @a[scores={cast=102}] at @s run playsound item.trident.throw ambient @a ~ ~ ~ 1 0
execute as @a[scores={cast=102}] at @s run playsound block.copper_grate.break ambient @a ~ ~ ~ 1 1.5
execute as @a[scores={cast=102}] at @s run playsound block.amethyst_block.break ambient @a ~ ~ ~ 2 .8
execute as @a[scores={cast=102}] at @s run playsound block.bell.resonate ambient @a ~ ~ ~ 1 2
execute as @a[scores={cast=102}] at @s run playsound block.note_block.chime ambient @a ~ ~ ~ 1 2
execute as @a[scores={cast=102}] at @s run playsound block.note_block.chime ambient @a ~ ~ ~ 1 1.5