

##### VFX
scoreboard players add #hellfire_shackles value 1
execute if score #hellfire_shackles value matches 2.. run scoreboard players set #hellfire_shackles value 0


execute if score #hellfire_shackles value matches 0 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle dust_color_transition 1 .5 0 1.5 1 0 0 ^.00 ^.1 ^.00 0 0 0 0 1
execute if score #hellfire_shackles value matches 0 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle dust_color_transition 1 .5 0 1.5 1 0 0 ^.20 ^.1 ^.17 0 0 0 0 1
execute if score #hellfire_shackles value matches 0 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle dust_color_transition 1 .5 0 1.5 1 0 0 ^.32 ^.1 ^.33 0 0 0 0 1
execute if score #hellfire_shackles value matches 0 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle dust_color_transition 1 .5 0 1.5 1 0 0 ^.40 ^.1 ^.50 0 0 0 0 1
execute if score #hellfire_shackles value matches 0 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle dust_color_transition 1 .5 0 1.5 1 0 0 ^.32 ^.1 ^.67 0 0 0 0 1
execute if score #hellfire_shackles value matches 0 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle dust_color_transition 1 .5 0 1.5 1 0 0 ^.20 ^.1 ^.83 0 0 0 0 1
execute if score #hellfire_shackles value matches 0 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle flame ^-.00 ^.1 ^.00 0 0 0 0 1
execute if score #hellfire_shackles value matches 0 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle flame ^-.20 ^.1 ^.17 0 0 0 0 1
execute if score #hellfire_shackles value matches 0 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle flame ^-.32 ^.1 ^.33 0 0 0 0 1
execute if score #hellfire_shackles value matches 0 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle flame ^-.40 ^.1 ^.50 0 0 0 0 1
execute if score #hellfire_shackles value matches 0 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle flame ^-.32 ^.1 ^.67 0 0 0 0 1
execute if score #hellfire_shackles value matches 0 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle flame ^-.20 ^.1 ^.83 0 0 0 0 1

execute if score #hellfire_shackles value matches 1 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle dust_color_transition 1 .5 0 1.5 1 0 0 ^-.00 ^.1 ^.00 0 0 0 0 1
execute if score #hellfire_shackles value matches 1 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle dust_color_transition 1 .5 0 1.5 1 0 0 ^-.20 ^.1 ^.17 0 0 0 0 1
execute if score #hellfire_shackles value matches 1 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle dust_color_transition 1 .5 0 1.5 1 0 0 ^-.32 ^.1 ^.33 0 0 0 0 1
execute if score #hellfire_shackles value matches 1 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle dust_color_transition 1 .5 0 1.5 1 0 0 ^-.40 ^.1 ^.50 0 0 0 0 1
execute if score #hellfire_shackles value matches 1 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle dust_color_transition 1 .5 0 1.5 1 0 0 ^-.32 ^.1 ^.67 0 0 0 0 1
execute if score #hellfire_shackles value matches 1 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle dust_color_transition 1 .5 0 1.5 1 0 0 ^-.20 ^.1 ^.83 0 0 0 0 1
execute if score #hellfire_shackles value matches 1 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle flame ^.00 ^.1 ^.00 0 0 0 0 1
execute if score #hellfire_shackles value matches 1 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle flame ^.20 ^.1 ^.17 0 0 0 0 1
execute if score #hellfire_shackles value matches 1 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle flame ^.32 ^.1 ^.33 0 0 0 0 1
execute if score #hellfire_shackles value matches 1 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle flame ^.40 ^.1 ^.50 0 0 0 0 1
execute if score #hellfire_shackles value matches 1 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle flame ^.32 ^.1 ^.67 0 0 0 0 1
execute if score #hellfire_shackles value matches 1 as @e[tag=projectile,tag=hellfire_shackles] at @s run particle flame ^.20 ^.1 ^.83 0 0 0 0 1

execute as @e[tag=projectile,tag=hellfire_shackles] at @s run tp @s ^ ^ ^1

execute as @e[tag=projectile,tag=hellfire_shackles] at @s run playsound block.chain.break ambient @a ~ ~ ~ .7 .7


##### Hit (enemy or wall)
execute as @e[tag=projectile,tag=hellfire_shackles] at @s positioned ^ ^ ^1 unless block ~ ~ ~ air run tag @s add hitwall
tag @e[tag=hitwall] add hit
execute as @e[tag=projectile,tag=hellfire_shackles] at @s positioned ^ ^ ^1 if entity @e[tag=enemy,distance=..1.3] run tag @s add hit


execute as @e[tag=projectile,tag=hellfire_shackles,tag=hit,tag=!hitwall] at @s positioned ^ ^ ^1 run scoreboard players add @e[tag=enemy,distance=..1.3,sort=nearest,limit=1] dmg 10
execute if entity @e[tag=projectile,tag=hellfire_shackles,tag=hit,tag=!hitwall] run function code:units/health/damage


execute as @e[tag=projectile,tag=hellfire_shackles,tag=hit,tag=hitwall] at @s positioned ^ ^ ^1 run particle smoke ~ ~ ~ .4 .4 .4 0 10
execute as @e[tag=projectile,tag=hellfire_shackles,tag=hit,tag=!hitwall] at @s positioned ^ ^ ^1 run particle flame ~ ~ ~ .4 .4 .4 0 10
execute as @e[tag=projectile,tag=hellfire_shackles,tag=hit] at @s positioned ^ ^ ^1 run playsound entity.zombie.attack_iron_door ambient @a ~ ~ ~ 1 .6
execute as @e[tag=projectile,tag=hellfire_shackles,tag=hit] at @s positioned ^ ^ ^1 run playsound entity.blaze.shoot ambient @a ~ ~ ~ 1.5 .8
execute as @e[tag=projectile,tag=hellfire_shackles,tag=hit] at @s positioned ^ ^ ^1 run playsound block.chain.place ambient @a ~ ~ ~ 1.5 .6
execute as @e[tag=projectile,tag=hellfire_shackles,tag=hit] at @s positioned ^ ^ ^1 run playsound block.chain.place ambient @a ~ ~ ~ 1.5 .8

kill @e[tag=projectile,tag=hellfire_shackles,tag=hitwall]
tag @e[tag=projectile,tag=hellfire_shackles,tag=hit] add flame
scoreboard players set @e[tag=projectile,tag=hellfire_shackles,tag=hit] life 0


##### Spawn visual effects
tag @e[tag=projectile,tag=hellfire_shackles,tag=hit] add spawnProjectile
function code:misc/spawn_projectile

tag @e[tag=projectile,tag=hellfire_shackles,tag=hit] add spawnProjectile
function code:misc/spawn_projectile
execute as @e[tag=projectile,tag=hellfire_shackles,tag=hit] at @s run tag @e[tag=projectile,tag=!hellfire_shackles,scores={life=0},sort=nearest,limit=2] add hellfire_shackles_effect

execute as @e[tag=projectile,tag=hellfire_shackles,tag=hit] at @s run tp @e[tag=projectile,tag=hellfire_shackles_effect,scores={life=0},sort=nearest,limit=2] ~ ~.8 ~ ~ 0
execute as @e[tag=projectile,tag=hellfire_shackles,tag=hit] at @s run tp @e[tag=projectile,tag=hellfire_shackles_effect,scores={life=0},sort=nearest,limit=1] ~ ~.8 ~ ~180 0
execute as @e[tag=projectile,tag=hellfire_shackles,tag=hit] at @s run scoreboard players set @e[tag=projectile,tag=hellfire_shackles_effect,scores={life=0},sort=nearest,limit=2] value -1



tag @e[tag=projectile,tag=hellfire_shackles,tag=hit] remove hit
