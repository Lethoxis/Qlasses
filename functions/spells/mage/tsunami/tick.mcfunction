

execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run particle dust_color_transition 1 1 1 1 .8 .8 1 ^1 ^5 ^1 .5 .3 .5 .02 20
execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run particle dust_color_transition .6 .6 1 1 .1 .1 1 ^1 ^2.5 ^-1 .7 1.4 .7 .02 100
execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run particle falling_water ^1 ^.3 ^.5 .5 1 .5 .02 50
execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run particle splash ^1.5 ^.5 ^1 1 1 1 .02 100
execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run particle dripping_water ^1 ^.1 ^-1 .65 0 .65 .02 10

execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run particle dust_color_transition 1 1 1 1 .8 .8 1 ^-1 ^5 ^1 .5 .3 .5 .02 20
execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run particle dust_color_transition .6 .6 1 1 .1 .1 1 ^-1 ^2.5 ^-1 .7 1.4 .7 .02 100
execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run particle falling_water ^-1 ^.3 ^.5 .5 1 .5 .02 50
execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run particle splash ^-1.5 ^.5 ^1 1 1 1 .02 100
execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run particle dripping_water ^-1 ^.1 ^-1 .65 0 .65 .02 10

execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run particle dust_color_transition 1 1 1 1 .8 .8 1 ^3 ^5 ^1 .5 .3 .5 .02 20
execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run particle dust_color_transition .6 .6 1 1 .1 .1 1 ^3 ^2.5 ^-1 .7 1.4 .7 .02 100
execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run particle falling_water ^3 ^.3 ^.5 .5 1 .5 .02 50
execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run particle dripping_water ^3 ^.1 ^-1 .65 0 .65 .02 10

execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run particle dust_color_transition 1 1 1 1 .8 .8 1 ^-3 ^5 ^1 .5 .3 .5 .02 20
execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run particle dust_color_transition .6 .6 1 1 .1 .1 1 ^-3 ^2.5 ^-1 .7 1.4 .7 .02 100
execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run particle falling_water ^-3 ^.3 ^.5 .5 1 .5 .02 50
execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run particle dripping_water ^-3 ^.1 ^-1 .65 0 .65 .02 10



execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run tp @s ^ ^ ^.4

execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run playsound entity.generic.swim ambient @a ~ ~ ~ .4 0
execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s run playsound entity.generic.splash ambient @a ~ ~ ~ 1 0



##### Hit (enemy or wall)
execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s positioned ^ ^ ^1 unless block ~ ~ ~ air run tag @s add hitwall
tag @e[tag=hitwall] add hit
execute as @e[tag=projectile,tag=tsunami,scores={life=0..}] at @s positioned ^ ^ ^1 if entity @e[tag=enemy,distance=..4.5] run tag @s add hit


execute as @e[tag=projectile,tag=tsunami,scores={life=0..},tag=hit] at @s positioned ^ ^ ^1 run scoreboard players add @e[tag=enemy,distance=..4.5] dmg 10
execute as @e[tag=projectile,tag=tsunami,scores={life=0..},tag=hit] at @s positioned ^ ^ ^1 as @e[tag=enemy,distance=..4.5] at @s run tp @s ~ ~.05 ~
execute as @e[tag=projectile,tag=tsunami,scores={life=0..},tag=hit] at @s positioned ^ ^ ^1 as @e[tag=enemy,distance=..4.5] at @s rotated as @e[tag=projectile,tag=tsunami,scores={life=0..},tag=hit,sort=nearest,limit=1] run tp @s ^ ^ ^.23
execute as @e[tag=projectile,tag=tsunami,scores={life=0..},tag=hit] at @s positioned ^ ^ ^1 as @e[tag=enemy,distance=..4.5] at @s run effect give @s slowness 3 0 true
execute if entity @e[tag=projectile,tag=tsunami,scores={life=0..},tag=hit] run function code:units/health/damage


execute as @e[tag=projectile,tag=tsunami,scores={life=0..},tag=hit,tag=!hitwall] at @s positioned ^ ^ ^1 run particle splash ~ ~1 ~ .4 .6 .4 0 40
execute as @e[tag=projectile,tag=tsunami,scores={life=0..},tag=hit,tag=!hitwall] at @s positioned ^ ^ ^1 run playsound entity.generic.splash ambient @a ~ ~ ~ 1 1.3



execute as @e[tag=projectile,tag=tsunami,scores={life=0..},tag=hit,tag=hitwall] at @s positioned ^ ^ ^1 run particle splash ~ ~ ~ .4 .4 .4 0 20
execute as @e[tag=projectile,tag=tsunami,scores={life=0..},tag=hit,tag=hitwall] at @s positioned ^ ^ ^1 run playsound entity.generic.splash ambient @a ~ ~ ~ 1 0
kill @e[tag=projectile,tag=tsunami,scores={life=0..},tag=hitwall]

tag @e[tag=projectile,tag=tsunami,scores={life=0..},tag=hit] remove hit


###### Death
kill @e[tag=projectile,tag=tsunami,scores={life=70..}]
