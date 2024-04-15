

##### VFX
scoreboard players add #shackled_hell value 1
execute if score #shackled_hell value matches 2.. run scoreboard players set #shackled_hell value 0


execute if score #shackled_hell value matches 0 as @e[tag=projectile,tag=shackled_hell] at @s run particle dust .7 .3 0 1 ^.00 ^.1 ^.00 0 0 0 0 1
execute if score #shackled_hell value matches 0 as @e[tag=projectile,tag=shackled_hell] at @s run particle dust .7 .3 0 1 ^.20 ^.1 ^.17 0 0 0 0 1
execute if score #shackled_hell value matches 0 as @e[tag=projectile,tag=shackled_hell] at @s run particle dust .7 .3 0 1 ^.32 ^.1 ^.33 0 0 0 0 1
execute if score #shackled_hell value matches 0 as @e[tag=projectile,tag=shackled_hell] at @s run particle dust .7 .3 0 1 ^.40 ^.1 ^.50 0 0 0 0 1
execute if score #shackled_hell value matches 0 as @e[tag=projectile,tag=shackled_hell] at @s run particle dust .7 .3 0 1 ^.32 ^.1 ^.67 0 0 0 0 1
execute if score #shackled_hell value matches 0 as @e[tag=projectile,tag=shackled_hell] at @s run particle dust .7 .3 0 1 ^.20 ^.1 ^.83 0 0 0 0 1
execute if score #shackled_hell value matches 0 as @e[tag=projectile,tag=shackled_hell] at @s run particle flame ^-.00 ^.1 ^.00 0 0 0 0 1
execute if score #shackled_hell value matches 0 as @e[tag=projectile,tag=shackled_hell] at @s run particle flame ^-.20 ^.1 ^.17 0 0 0 0 1
execute if score #shackled_hell value matches 0 as @e[tag=projectile,tag=shackled_hell] at @s run particle flame ^-.32 ^.1 ^.33 0 0 0 0 1
execute if score #shackled_hell value matches 0 as @e[tag=projectile,tag=shackled_hell] at @s run particle flame ^-.40 ^.1 ^.50 0 0 0 0 1
execute if score #shackled_hell value matches 0 as @e[tag=projectile,tag=shackled_hell] at @s run particle flame ^-.32 ^.1 ^.67 0 0 0 0 1
execute if score #shackled_hell value matches 0 as @e[tag=projectile,tag=shackled_hell] at @s run particle flame ^-.20 ^.1 ^.83 0 0 0 0 1

execute if score #shackled_hell value matches 1 as @e[tag=projectile,tag=shackled_hell] at @s run particle dust .7 .3 0 1 ^-.00 ^.1 ^.00 0 0 0 0 1
execute if score #shackled_hell value matches 1 as @e[tag=projectile,tag=shackled_hell] at @s run particle dust .7 .3 0 1 ^-.20 ^.1 ^.17 0 0 0 0 1
execute if score #shackled_hell value matches 1 as @e[tag=projectile,tag=shackled_hell] at @s run particle dust .7 .3 0 1 ^-.32 ^.1 ^.33 0 0 0 0 1
execute if score #shackled_hell value matches 1 as @e[tag=projectile,tag=shackled_hell] at @s run particle dust .7 .3 0 1 ^-.40 ^.1 ^.50 0 0 0 0 1
execute if score #shackled_hell value matches 1 as @e[tag=projectile,tag=shackled_hell] at @s run particle dust .7 .3 0 1 ^-.32 ^.1 ^.67 0 0 0 0 1
execute if score #shackled_hell value matches 1 as @e[tag=projectile,tag=shackled_hell] at @s run particle dust .7 .3 0 1 ^-.20 ^.1 ^.83 0 0 0 0 1
execute if score #shackled_hell value matches 1 as @e[tag=projectile,tag=shackled_hell] at @s run particle flame ^.00 ^.1 ^.00 0 0 0 0 1
execute if score #shackled_hell value matches 1 as @e[tag=projectile,tag=shackled_hell] at @s run particle flame ^.20 ^.1 ^.17 0 0 0 0 1
execute if score #shackled_hell value matches 1 as @e[tag=projectile,tag=shackled_hell] at @s run particle flame ^.32 ^.1 ^.33 0 0 0 0 1
execute if score #shackled_hell value matches 1 as @e[tag=projectile,tag=shackled_hell] at @s run particle flame ^.40 ^.1 ^.50 0 0 0 0 1
execute if score #shackled_hell value matches 1 as @e[tag=projectile,tag=shackled_hell] at @s run particle flame ^.32 ^.1 ^.67 0 0 0 0 1
execute if score #shackled_hell value matches 1 as @e[tag=projectile,tag=shackled_hell] at @s run particle flame ^.20 ^.1 ^.83 0 0 0 0 1

execute as @e[tag=projectile,tag=shackled_hell] at @s run tp @s ^ ^ ^1



##### Hit (enemy or wall)
execute as @e[tag=projectile,tag=shackled_hell] at @s positioned ^ ^ ^1 unless block ~ ~ ~ air run tag @s add hitwall
tag @e[tag=hitwall] add hit
execute as @e[tag=projectile,tag=shackled_hell] at @s positioned ^ ^ ^1 if entity @e[tag=enemy,distance=..1.3] run tag @s add hit


execute as @e[tag=projectile,tag=shackled_hell,tag=hit,tag=!hitwall] at @s positioned ^ ^ ^1 run scoreboard players add @e[tag=enemy,distance=..1.3,sort=nearest,limit=1] dmg 10
execute if entity @e[tag=projectile,tag=shackled_hell,tag=hit,tag=!hitwall] run function code:units/health/damage


execute as @e[tag=projectile,tag=shackled_hell,tag=hit,tag=hitwall] at @s positioned ^ ^ ^1 run particle smoke ~ ~ ~ .4 .4 .4 0 10
execute as @e[tag=projectile,tag=shackled_hell,tag=hit,tag=!hitwall] at @s positioned ^ ^ ^1 run particle flame ~ ~ ~ .4 .4 .4 0 10
execute as @e[tag=projectile,tag=shackled_hell,tag=hit] at @s positioned ^ ^ ^1 run playsound entity.player.hurt_on_fire ambient @a ~ ~ ~ 1 1.5

kill @e[tag=projectile,tag=shackled_hell,tag=hitwall]
tag @e[tag=projectile,tag=shackled_hell,tag=hit] add flame
scoreboard players set @e[tag=projectile,tag=shackled_hell,tag=hit] life 0


##### Spawn visual effects
tag @e[tag=projectile,tag=shackled_hell,tag=hit] add spawnProjectile
function code:misc/spawn_projectile
execute as @e[tag=projectile,tag=shackled_hell,tag=hit] at @s run tag @e[tag=projectile,tag=!shackled_hell_effect,scores={life=0},sort=nearest,limit=1] add shackled_hell_effect

tag @e[tag=projectile,tag=shackled_hell,tag=hit] add spawnProjectile
function code:misc/spawn_projectile
execute as @e[tag=projectile,tag=shackled_hell,tag=hit] at @s run tag @e[tag=projectile,tag=!shackled_hell_effect,scores={life=0},sort=nearest,limit=1] add shackled_hell_effect

execute as @e[tag=projectile,tag=shackled_hell,tag=hit] at @s run tp @e[tag=projectile,tag=shackled_hell_effect,scores={life=0},sort=nearest,limit=2] ~ ~2 ~ ~ 0
execute as @e[tag=projectile,tag=shackled_hell,tag=hit] at @s run tp @e[tag=projectile,tag=shackled_hell_effect,scores={life=0},sort=nearest,limit=1] ~ ~2 ~ ~180 0
execute as @e[tag=projectile,tag=shackled_hell,tag=hit] at @s run scoreboard players set @e[tag=projectile,tag=shackled_hell_effect,scores={life=0},sort=nearest,limit=2] value -1



tag @e[tag=projectile,tag=shackled_hell,tag=hit] remove hit
