

##### Hit (enemy or wall)
execute as @e[tag=projectile,tag=twinstream,scores={life=20..}] at @s positioned ^ ^ ^.5 unless block ~ ~ ~ air run tag @s add hitwall
execute as @e[tag=projectile,tag=twinstream,scores={life=20..}] at @s positioned ^ ^ ^1.5 unless block ~ ~ ~ air run tag @s add hitwall
execute as @e[tag=projectile,tag=twinstream,scores={life=20..}] at @s positioned ^ ^ ^2.5 unless block ~ ~ ~ air run tag @s add hitwall
tag @e[tag=hitwall] add hit
execute as @e[tag=projectile,tag=twinstream,scores={life=20..}] at @s positioned ^ ^-1 ^1 if entity @e[tag=enemy,distance=..1] run tag @s add hit




execute as @e[tag=projectile,tag=twinstream,tag=hit] at @s positioned ^ ^-1 ^1 run scoreboard players add @e[tag=enemy,distance=..1,sort=nearest,limit=1] dmg 35
#execute as @e[tag=projectile,tag=twinstream,tag=hit] at @s positioned ^ ^-1 ^1 as @e[tag=enemy,distance=..1,sort=nearest,limit=1] at @s run tp @s ~ ~ ~
execute as @e[tag=projectile,tag=twinstream,tag=hit] at @s positioned ^ ^-1 ^1 as @e[tag=enemy,distance=..1,sort=nearest,limit=1] at @s run effect give @s slowness 3 2 true


execute as @e[tag=projectile,tag=twinstream,tag=hit] at @s positioned ^ ^-1 ^1 as @e[tag=enemy,distance=..1,sort=nearest,limit=1] at @s run particle splash ~ ~2 ~ .4 .7 .4 0 300
execute as @e[tag=projectile,tag=twinstream,tag=hit] at @s positioned ^ ^-1 ^1 as @e[tag=enemy,distance=..1,sort=nearest,limit=1] at @s run particle dust 0 .5 1 1 ~ ~.8 ~ .4 .4 .4 0 50
execute as @e[tag=projectile,tag=twinstream,tag=hit] at @s positioned ^ ^ ^1 run playsound entity.zombie.attack_wooden_door ambient @a ~ ~ ~ .2 2
execute as @e[tag=projectile,tag=twinstream,tag=hit] at @s positioned ^ ^ ^1 run playsound ambient.underwater.enter ambient @a ~ ~ ~ 1.5 2

execute if entity @e[tag=projectile,tag=twinstream,tag=hit] run function code:units/health/damage
kill @e[tag=projectile,tag=twinstream,tag=hit]

