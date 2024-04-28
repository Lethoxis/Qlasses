
execute as @e[tag=projectile,tag=wave] at @s run particle dust_color_transition{from_color:[1.0, 1.0, 1.0], scale:1, to_color:[.1, .1, 1.0]} ^ ^.15 ^1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=wave] at @s run particle splash ^ ^.05 ^.1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=wave] at @s run particle falling_water ^ ^.5 ^.0 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=wave] at @s run particle dust_color_transition{from_color:[1.0, 1.0, 1.0], scale:1, to_color:[.1, .1, 1.0]} ^.6 ^.15 ^1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=wave] at @s run particle splash ^.6 ^.05 ^.1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=wave] at @s run particle falling_water ^.6 ^.5 ^.0 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=wave] at @s run particle dust_color_transition{from_color:[1.0, 1.0, 1.0], scale:1, to_color:[.1, .1, 1.0]} ^-.6 ^.15 ^1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=wave] at @s run particle splash ^-.6 ^.05 ^.1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=wave] at @s run particle falling_water ^-.6 ^.5 ^.0 .2 .2 .2 .02 10

execute as @e[tag=projectile,tag=wave] at @s run tp @s ^ ^ ^.7



##### Hit (enemy or wall)
execute as @e[tag=projectile,tag=wave] at @s positioned ^ ^ ^1 unless block ~ ~ ~ air run tag @s add hitwall
tag @e[tag=hitwall] add hit
execute as @e[tag=projectile,tag=wave] at @s positioned ^ ^ ^1 if entity @e[tag=enemy,distance=..1.3] run tag @s add hit




execute as @e[tag=projectile,tag=wave,tag=hit] at @s positioned ^ ^ ^1 run scoreboard players add @e[tag=enemy,distance=..1.2,sort=nearest] dmg 8
execute as @e[tag=projectile,tag=wave,tag=hit] at @s positioned ^ ^ ^1 as @e[tag=enemy,distance=..1.2,sort=nearest] at @s run tp @s ~ ~.15 ~
execute as @e[tag=projectile,tag=wave,tag=hit] at @s positioned ^ ^ ^1 as @e[tag=enemy,distance=..1.2,sort=nearest] at @s run effect give @s slowness 3 0 true
execute if entity @e[tag=projectile,tag=wave,tag=hit] run function code:units/health/damage


execute as @e[tag=projectile,tag=wave,tag=hit,tag=!hitwall] at @s positioned ^ ^ ^1 run particle splash ~ ~1 ~ .4 .6 .4 0 40
execute as @e[tag=projectile,tag=wave,tag=hit,tag=!hitwall] at @s positioned ^ ^ ^1 run playsound entity.generic.splash ambient @a ~ ~ ~ 1 1.3


execute as @e[tag=projectile,tag=wave,tag=hit,tag=hitwall] at @s positioned ^ ^ ^1 run particle splash ~ ~ ~ .4 .4 .4 0 20
execute as @e[tag=projectile,tag=wave,tag=hit,tag=hitwall] at @s positioned ^ ^ ^1 run playsound entity.generic.splash ambient @a ~ ~ ~ 1 0
kill @e[tag=projectile,tag=wave,tag=hitwall]

tag @e[tag=projectile,tag=wave,tag=hit] remove hit


###### Death
kill @e[tag=projectile,tag=wave,scores={life=30..}]
