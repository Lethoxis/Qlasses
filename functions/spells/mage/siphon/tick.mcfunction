
##### VSFX
execute as @e[tag=projectile,tag=siphon,scores={life=1..}] at @s run particle dust_color_transition 1 1 1 1.5 .1 .1 1 ^ ^.1 ^5 .1 0 .1 .01 2
execute as @e[tag=projectile,tag=siphon,scores={life=1..}] at @s run particle dust_color_transition 1 1 1 1.5 .1 .1 1 ^ ^.1 ^-5 .1 0 .1 .01 2
execute as @e[tag=projectile,tag=siphon,scores={life=1..}] at @s run particle dust_color_transition 1 1 1 1.5 .1 .1 1 ^ ^.1 ^ .5 0 .5 .01 12
execute as @e[tag=projectile,tag=siphon,scores={life=1..}] at @s run tp @s ~ ~ ~ ~15 ~


execute as @e[tag=projectile,tag=siphon] at @s run playsound entity.generic.splash ambient @a ~ ~ ~ 1 0
execute as @e[tag=projectile,tag=siphon,scores={life=2}] at @s run playsound weather.rain ambient @a ~ ~ ~ .3 .6
execute as @e[tag=projectile,tag=siphon,scores={life=45}] at @s run playsound weather.rain ambient @a ~ ~ ~ .3 .6
execute as @e[tag=projectile,tag=siphon,scores={life=90}] at @s run playsound weather.rain ambient @a ~ ~ ~ .3 .6



##### VSFX inwards
execute as @e[tag=projectile,tag=siphon,scores={life=1..}] store result score @s random run random value 1..16

execute as @e[tag=projectile,tag=siphon,scores={random=1..2}] at @s run tag @s add spawnProjectile
execute if entity @e[tag=projectile,tag=siphon,scores={random=1..2}] run function code:misc/spawn_projectile
execute as @e[tag=projectile,tag=siphon,scores={random=1..2}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add siphon_effect

execute as @e[tag=projectile,tag=siphon,scores={random=1}] at @s run tp @e[tag=projectile,tag=siphon_effect,scores={life=0},sort=nearest,limit=1] ^5 ^ ^
execute as @e[tag=projectile,tag=siphon,scores={random=2}] at @s run tp @e[tag=projectile,tag=siphon_effect,scores={life=0},sort=nearest,limit=1] ^-5 ^ ^


execute as @e[tag=siphon,scores={random=1..2}] run tag @s remove spawnProjectile



##### Vortex effect
execute as @e[tag=projectile,tag=siphon,scores={life=1..}] at @s as @e[tag=enemy,distance=1..5] at @s facing entity @e[tag=projectile,tag=siphon,scores={life=1..},sort=nearest,limit=1] feet run tp @s ^ ^ ^.1
execute as @e[tag=projectile,tag=siphon,scores={life=1..}] at @s run scoreboard players add @e[tag=enemy,distance=..1.1] dmg 1
execute as @e[tag=projectile,tag=siphon,scores={life=1..}] at @s if entity @e[tag=enemy,distance=..1.3] run function code:units/health/damage



###### Death
kill @e[tag=siphon,scores={life=140..}]
