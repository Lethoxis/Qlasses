
##### VSFX
execute as @e[tag=projectile,tag=siphon,scores={life=1..140}] at @s run particle item{item:"blue_candle"} ^ ^.2 ^ .5 .3 .5 .2 20

execute as @e[tag=projectile,tag=siphon,scores={life=1..140}] at @s run particle splash ^ ^ ^ 2.5 0 2.5 .01 30

execute as @e[tag=projectile,tag=siphon,scores={life=1..140}] at @s run particle dust_color_transition{from_color:[.2, .6, 1.0], scale:1.5, to_color:[0.0, 0.0, 1.0]} ^ ^.15 ^1.5 .1 0 .1 .01 2
execute as @e[tag=projectile,tag=siphon,scores={life=1..140}] at @s run particle dust_color_transition{from_color:[.2, .6, 1.0], scale:1.5, to_color:[0.0, 0.0, 1.0]} ^ ^.15 ^-1.5 .1 0 .1 .01 2
execute as @e[tag=projectile,tag=siphon,scores={life=1..}] at @s run tp @s ~ ~ ~ ~15 ~


execute as @e[tag=projectile,tag=siphon,scores={life=5..130}] at @s run playsound ambient.underwater.enter ambient @a ~ ~ ~ .2 1
execute as @e[tag=projectile,tag=siphon,scores={life=2..6}] at @s run playsound weather.rain ambient @a ~ ~ ~ 1 .6
execute as @e[tag=projectile,tag=siphon,scores={life=45..47}] at @s run playsound weather.rain ambient @a ~ ~ ~ 1 .6
execute as @e[tag=projectile,tag=siphon,scores={life=90..92}] at @s run playsound weather.rain ambient @a ~ ~ ~ 1 .6
execute as @e[tag=projectile,tag=siphon,scores={life=120..122}] at @s run playsound weather.rain ambient @a ~ ~ ~ 1 .6



##### VSFX inwards
execute as @e[tag=projectile,tag=siphon,scores={life=1..140}] store result score @s random run random value 1..6

execute as @e[tag=projectile,tag=siphon,scores={random=1..4,life=1..140}] at @s run tag @s add spawnProjectile
execute if entity @e[tag=projectile,tag=siphon,scores={random=1..4,life=1..140}] run function code:misc/spawn_projectile
execute as @e[tag=projectile,tag=siphon,scores={random=1..4,life=1..140}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add siphon_effect

execute as @e[tag=projectile,tag=siphon,scores={random=1,life=1..140}] at @s run tp @e[tag=projectile,tag=siphon_effect,scores={life=0},sort=nearest,limit=1] ^6.5 ^ ^
execute as @e[tag=projectile,tag=siphon,scores={random=2,life=1..140}] at @s run tp @e[tag=projectile,tag=siphon_effect,scores={life=0},sort=nearest,limit=1] ^-6.5 ^ ^
execute as @e[tag=projectile,tag=siphon,scores={random=3,life=1..140}] at @s run tp @e[tag=projectile,tag=siphon_effect,scores={life=0},sort=nearest,limit=1] ^ ^ ^6.5
execute as @e[tag=projectile,tag=siphon,scores={random=4,life=1..140}] at @s run tp @e[tag=projectile,tag=siphon_effect,scores={life=0},sort=nearest,limit=1] ^ ^ ^-6.5



##### Vortex effect
execute as @e[tag=projectile,tag=siphon,scores={life=1..145}] at @s as @e[tag=enemy,distance=1..6.5] at @s facing entity @e[tag=projectile,tag=siphon,scores={life=1..},sort=nearest,limit=1] feet run tp @s ^ ^ ^.13
execute as @e[tag=projectile,tag=siphon,scores={life=1..145}] at @s run scoreboard players add @e[tag=enemy,distance=..1.5] dmg 1
execute as @e[tag=projectile,tag=siphon,scores={life=1..145}] at @s if entity @e[tag=enemy,distance=..1.3] run function code:units/health/damage



###### Death
execute at @e[tag=projectile,tag=siphon,scores={life=170..}] run kill @e[tag=siphon_effect,distance=..6.6]
kill @e[tag=projectile,tag=siphon,scores={life=170..}]
