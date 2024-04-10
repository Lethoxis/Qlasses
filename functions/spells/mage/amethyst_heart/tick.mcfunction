
execute as @e[tag=projectile,tag=amethyst_heart] at @s run tp @s ~ ~ ~ ~-8 ~
execute as @e[tag=amethyst_heart_vfx] at @s run tp @s ~ ~ ~ ~18 ~
execute as @e[tag=amethyst_heart_vfx] at @s run particle dust .6 .1 .7 1.7 ^ ^ ^1 .3 .1 .3 .02 15

################## Summon shards
scoreboard players add #amethyst_heart value 1
execute if score #amethyst_heart value matches 45.. run scoreboard players set #amethyst_heart value 0

execute if score #amethyst_heart value matches 1 at @e[tag=projectile,tag=amethyst_heart,scores={life=30..}] run particle end_rod ^ ^ ^ .8 .1 .8 .01 200
execute if score #amethyst_heart value matches 1 as @e[tag=projectile,tag=amethyst_heart,scores={life=30..}] at @s run playsound item.armor.equip_diamond ambient @a ~ ~ ~ .8 1
execute if score #amethyst_heart value matches 1 as @e[tag=projectile,tag=amethyst_heart,scores={life=30..}] at @s run playsound block.amethyst_block.resonate ambient @a ~ ~ ~ 1.5 1


execute if score #amethyst_heart value matches 1 run tag @e[tag=projectile,tag=amethyst_heart,scores={life=30..}] add spawnProjectile
execute if score #amethyst_heart value matches 1 run function code:misc/spawn_projectile
execute if score #amethyst_heart value matches 1 as @e[tag=projectile,tag=amethyst_heart,scores={life=30..}] at @s run tag @e[tag=projectile,tag=!amethyst_heart,scores={life=0},sort=nearest,limit=1] add amethyst_heart_beat


################## Death
execute at @e[tag=projectile,tag=amethyst_heart,scores={life=240..}] run kill @e[tag=amethyst_heart_vfx,sort=nearest,limit=1]
kill @e[tag=projectile,tag=amethyst_heart,scores={life=240..}]
