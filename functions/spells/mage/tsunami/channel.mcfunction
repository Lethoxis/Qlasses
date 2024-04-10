

execute as @e[tag=projectile,tag=tsunami,scores={life=..-1}] at @s run tp @a[tag=tsunami,sort=nearest,limit=1] ~ ~ ~

execute as @e[tag=projectile,tag=tsunami,scores={life=..-1}] at @s run tp @s ~ ~ ~ ~22 ~
execute as @e[tag=projectile,tag=tsunami,scores={life=-55..-45}] at @s run particle dust_color_transition .3 .3 1 2 .8 .8 1 ^ ^.4 ^5 .4 .1 .4 .2 10
execute as @e[tag=projectile,tag=tsunami,scores={life=-45..-35}] at @s run particle dust_color_transition .3 .3 1 2 .8 .8 1 ^ ^.4 ^4.2 .4 .1 .4 .2 10
execute as @e[tag=projectile,tag=tsunami,scores={life=-35..-25}] at @s run particle dust_color_transition .3 .3 1 2 .8 .8 1 ^ ^.4 ^3.4 .4 .1 .4 .2 10
execute as @e[tag=projectile,tag=tsunami,scores={life=-25..-15}] at @s run particle dust_color_transition .3 .3 1 2 .8 .8 1 ^ ^.4 ^2.6 .4 .1 .4 .2 10
execute as @e[tag=projectile,tag=tsunami,scores={life=-15..-5}] at @s run particle dust_color_transition .3 .3 1 2 .8 .8 1 ^ ^.4 ^1.8 .4 .1 .4 .2 10

execute as @e[tag=projectile,tag=tsunami,scores={life=-55..-40}] at @s run playsound ambient.underwater.enter ambient @a ~ ~ ~ .7 0.6
execute as @e[tag=projectile,tag=tsunami,scores={life=-40..-25}] at @s run playsound ambient.underwater.enter ambient @a ~ ~ ~ .7 0.8
execute as @e[tag=projectile,tag=tsunami,scores={life=-25..-14}] at @s run playsound ambient.underwater.enter ambient @a ~ ~ ~ .7 1



############# End of channel
execute as @e[tag=projectile,tag=tsunami,scores={life=-1}] at @s run playsound ambient.underwater.exit ambient @a ~ ~ ~ 3 0
execute as @e[tag=projectile,tag=tsunami,scores={life=-1}] at @s run playsound item.totem.use ambient @a ~ ~ ~ .5 .8
execute as @e[tag=projectile,tag=tsunami,scores={life=-1}] at @s run particle item blue_wool ~ ~1.5 ~ 1 1 1 .7 300

execute as @e[tag=projectile,tag=tsunami,scores={life=-1}] at @a[tag=tsunami,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0
execute as @e[tag=projectile,tag=tsunami,scores={life=-1}] at @s run tag @s add going
execute as @e[tag=projectile,tag=tsunami,scores={life=-1}] at @s run tag @a[tag=tsunami,sort=nearest,limit=1] remove channeling
