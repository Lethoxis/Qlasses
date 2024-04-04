
execute as @e[tag=projectile,tag=amethyst_storm] at @s run particle cloud ^ ^ ^ .5 .5 .5 .02 10
execute as @e[tag=projectile,tag=amethyst_storm] at @s run particle item amethyst_cluster ^ ^ ^ .5 .5 .5 .3 10

execute as @e[tag=projectile,tag=amethyst_storm_vfx] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=projectile,tag=amethyst_storm_vfx] at @s run particle cloud ^ ^ ^5 0 0 0 .02 2

################## Summon shards
scoreboard players add #amethyst_storm value 1
execute if score #amethyst_storm value matches 2.. run scoreboard players set #amethyst_storm value 0

execute if score #amethyst_storm value matches 1 as @e[tag=projectile,tag=amethyst_storm] at @s run playsound item.armor.equip_diamond ambient @a ~ ~ ~ .8 2
execute if score #amethyst_storm value matches 1 as @e[tag=projectile,tag=amethyst_storm] at @s run playsound block.amethyst_block.resonate ambient @a ~ ~ ~ 1.2 2

execute if score #amethyst_storm value matches 1 run tag @e[tag=projectile,tag=amethyst_storm] add spawnProjectile
execute if score #amethyst_storm value matches 1 run tag @e[tag=projectile,tag=amethyst_storm] add blockDisplay
execute if score #amethyst_storm value matches 1 run function code:misc/spawn_projectile
execute if score #amethyst_storm value matches 1 as @e[tag=projectile,tag=amethyst_storm] at @s run tag @e[tag=projectile,tag=!amethyst_storm,scores={life=0},sort=nearest,limit=1] add amethyst_storm_shard
execute if score #amethyst_storm value matches 1 as @e[tag=projectile,tag=amethyst_storm] at @s run execute as @e[tag=projectile,tag=!amethyst_storm,scores={life=0},sort=nearest,limit=1] run data merge entity @s {block_state:{Name:"minecraft:small_amethyst_bud"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.71f,0f,0f,1f],translation:[-0.4f,0.4f,0f],scale:[0.5f,0.5f,0.5f]}}



################## Death
execute at @e[tag=projectile,tag=amethyst_storm,scores={life=60..}] run kill @e[tag=amethyst_storm_vfx,sort=nearest,limit=1]
kill @e[tag=projectile,tag=amethyst_storm,scores={life=60..}]
