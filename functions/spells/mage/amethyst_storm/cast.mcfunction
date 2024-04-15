
tag @a[scores={cast=101}] add spawnProjectile
tag @a[scores={cast=101}] add itemDisplay
function code:misc/player_spawn_projectile


execute as @a[scores={cast=101}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add amethyst_storm
execute as @a[scores={cast=101}] at @s run summon marker ~ ~ ~ {Tags:["passenger","amethyst_storm_vfx","new"]}
execute as @a[scores={cast=101}] at @s run ride @e[tag=amethyst_storm_vfx,tag=new,sort=nearest,limit=1] mount @e[tag=projectile,tag=amethyst_storm,scores={life=0},sort=nearest,limit=1]
tag @e[tag=amethyst_storm_vfx,tag=new] remove new
execute as @a[scores={cast=101}] at @s run execute as @e[tag=projectile,scores={life=0},sort=nearest,limit=1] run data merge entity @s {transformation:{left_rotation:[-.5f,0f,0f,1f],right_rotation:[0f,0f,.5f,1f],translation:[0f,0f,0f],scale:[.6,.6,.6]},item:{id:"minecraft:amethyst_block",Count:1b}}


######## VSFX
execute as @a[scores={cast=101}] at @s run particle dust .6 .3 .7 1 ~ ~7 ~ .1 3 .1 .3 200
execute as @a[scores={cast=101}] at @s run particle dust 1 .9 .2 1 ~ ~7 ~ .1 3 .1 .3 200
execute as @a[scores={cast=101}] at @s run particle cloud ~ ~7 ~ .02 3 .02 .02 80

execute as @a[scores={cast=101}] at @s run playsound entity.lightning_bolt.thunder ambient @a ~ ~ ~ .8 2
execute as @a[scores={cast=101}] at @s run playsound entity.lightning_bolt.thunder ambient @a ~ ~ ~ .8 0
execute as @a[scores={cast=101}] at @s run playsound block.amethyst_block.break ambient @a ~ ~ ~ 2 .8
execute as @a[scores={cast=101}] at @s run playsound block.amethyst_block.break ambient @a ~ ~ ~ 2 .8
