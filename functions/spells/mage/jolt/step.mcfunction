
execute as @e[tag=projectile,tag=jolt] at @s run particle dust 1 1 .2 1 ^ ^.1 ^ .05 .05 .05 .02 2
execute as @e[tag=projectile,tag=jolt] at @s run particle dust 1 1 .2 1 ^ ^.1 ^.25 .05 .05 .05 .02 2
execute as @e[tag=projectile,tag=jolt] at @s run particle dust 1 1 .2 1 ^ ^.1 ^.5 .05 .05 .05 .02 2
execute as @e[tag=projectile,tag=jolt] at @s run particle instant_effect ^ ^.1 ^ .05 .05 .05 0 1
execute as @e[tag=projectile,tag=jolt] at @s run particle instant_effect ^ ^.1 ^.25 .05 .05 .05 0 1
execute as @e[tag=projectile,tag=jolt] at @s run particle instant_effect ^ ^.1 ^.5 .05 .05 .05 0 1
execute as @e[tag=projectile,tag=jolt] at @s run tp @s ^ ^ ^.7



##### Hit (enemy or wall)
execute as @e[tag=projectile,tag=jolt] at @s unless block ~ ~ ~ air run tag @s add hitwall
tag @e[tag=hitwall] add hit
execute as @e[tag=projectile,tag=jolt] at @s if entity @e[tag=enemy,tag=!jolted,distance=..1.3] run tag @s add hit



execute as @e[tag=projectile,tag=jolt,tag=hit,tag=!hitwall] at @s run tag @e[tag=enemy,distance=..1.3,sort=nearest,limit=1] add jolted
execute as @e[tag=projectile,tag=jolt,tag=hit,tag=!hitwall] at @s run scoreboard players add @e[tag=enemy,distance=..1.3,sort=nearest,limit=1] dmg 7
execute as @e[tag=projectile,tag=jolt,tag=hit,tag=!hitwall] at @s at @e[tag=enemy,distance=..1.3,sort=nearest,limit=1] run particle instant_effect ~ ~1 ~ .4 .4 .4 0 20

execute if entity @e[tag=projectile,tag=jolt,tag=hit,tag=!hitwall] run function code:units/health/damage




execute as @e[tag=projectile,tag=jolt,tag=hit] at @s run playsound block.gravel.break ambient @a ~ ~ ~ 1 1.8
scoreboard players remove @e[tag=projectile,tag=jolt,tag=hit] random 1


#### Next target?
execute as @e[tag=projectile,tag=jolt,tag=hit,tag=!hitwall] at @s at @e[tag=enemy,distance=..1.3,sort=nearest,limit=1] unless entity @e[tag=enemy,tag=!jolted,distance=..6,sort=nearest,limit=1] run kill @s
execute as @e[tag=projectile,tag=jolt,tag=hit,tag=!hitwall] at @s at @e[tag=enemy,distance=..1.3,sort=nearest,limit=1] facing entity @e[tag=enemy,tag=!jolted,distance=..6,sort=nearest,limit=1] feet run tp @s ~ ~.7 ~ ~ ~ 








kill @e[tag=projectile,tag=jolt,tag=hit,scores={random=..-1}]
tag @e[tag=projectile,tag=jolt,tag=hit] remove hit
