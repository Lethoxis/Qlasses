
execute as @e[tag=projectile,tag=fireball] at @s run particle dust .7 .3 0 .7 ^ ^.1 ^-.75 .05 .05 .05 .02 2
execute as @e[tag=projectile,tag=fireball] at @s run particle smoke ^ ^.1 ^ .05 .05 .05 .02 2

execute as @e[tag=projectile,tag=fireball] at @s run tp @s ^ ^ ^1.5



##### Hit (enemy or wall)
execute as @e[tag=projectile,tag=fireball] at @s positioned ^ ^ ^1 unless block ~ ~ ~ air run tag @s add hitwall
tag @e[tag=hitwall] add hit
execute as @e[tag=projectile,tag=fireball] at @s positioned ^ ^ ^1 if entity @e[tag=enemy,distance=..1.3] run tag @s add hit



execute as @e[tag=projectile,tag=fireball,tag=hit] at @s positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["fire","effect","passenger","hasLife","fireballEffect"]}
scoreboard players set @e[tag=fireballEffect] life -80
scoreboard players set @e[tag=fireballEffect] effDmg 1
execute as @e[tag=projectile,tag=fireball,tag=hit] at @s positioned ^ ^ ^1 run ride @e[tag=fireballEffect,limit=1] mount @e[tag=enemy,distance=..1.3,sort=nearest,limit=1]
tag @e[tag=fireballEffect] remove fireballEffect



execute as @e[tag=projectile,tag=fireball,tag=hit] at @s positioned ^ ^ ^1 run scoreboard players add @e[tag=enemy,distance=..1.3,sort=nearest,limit=1] dmg 8
execute if entity @e[tag=projectile,tag=fireball,tag=hit] run function code:units/health/damage


execute as @e[tag=projectile,tag=fireball,tag=hit,tag=hitwall] at @s positioned ^ ^ ^1 run particle smoke ~ ~ ~ .4 .4 .4 0 10
execute as @e[tag=projectile,tag=fireball,tag=hit,tag=!hitwall] at @s positioned ^ ^ ^1 run particle flame ~ ~ ~ .4 .4 .4 0 10
execute as @e[tag=projectile,tag=fireball,tag=hit] at @s positioned ^ ^ ^1 run playsound entity.player.hurt_on_fire ambient @a ~ ~ ~ 1 1.5
kill @e[tag=projectile,tag=fireball,tag=hit]




###### Death
kill @e[tag=projectile,tag=fireball,scores={life=30..}]
