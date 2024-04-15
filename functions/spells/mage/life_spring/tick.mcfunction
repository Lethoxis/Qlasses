
##### VSFX
execute as @e[tag=projectile,tag=life_spring,scores={life=1..170}] at @s run summon area_effect_cloud ~ ~.03 ~ {Particle:"falling_water",Duration:2s,Radius:6}

execute as @e[tag=projectile,tag=life_spring,scores={life=1..160}] at @s run particle cloud ^ ^.1 ^ .15 0 .15 .01 4
execute as @e[tag=projectile,tag=life_spring,scores={life=1..170}] at @s run particle dust_color_transition .2 .6 1 1.5 0 1 1 ^ ^.15 ^6 .1 0 .1 .01 2
execute as @e[tag=projectile,tag=life_spring,scores={life=1..170}] at @s run particle dust_color_transition .2 .6 1 1.5 0 1 1 ^ ^.15 ^-6 .1 0 .1 .01 2
execute as @e[tag=projectile,tag=life_spring,scores={life=1..}] at @s run tp @s ~ ~ ~ ~9 ~


execute as @e[tag=projectile,tag=life_spring,scores={life=2..160}] at @s run playsound weather.rain ambient @a ~ ~ ~ .2 2



##### VSFX inwards
execute as @e[tag=projectile,tag=life_spring,scores={life=1..140}] store result score @s random run random value 1..6

execute as @e[tag=projectile,tag=life_spring,scores={random=1..4,life=1..140}] at @s run tag @s add spawnProjectile
execute if entity @e[tag=projectile,tag=life_spring,scores={random=1..4,life=1..140}] run function code:misc/spawn_projectile
execute as @e[tag=projectile,tag=life_spring,scores={random=1..4,life=1..140}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add life_spring_effect

execute as @e[tag=projectile,tag=life_spring,scores={random=1,life=1..140}] at @s run tp @e[tag=projectile,tag=life_spring_effect,scores={life=0},sort=nearest,limit=1] ^ ^ ^.2 ~ -90
execute as @e[tag=projectile,tag=life_spring,scores={random=2,life=1..140}] at @s run tp @e[tag=projectile,tag=life_spring_effect,scores={life=0},sort=nearest,limit=1] ^ ^ ^.2 ~90 -90
execute as @e[tag=projectile,tag=life_spring,scores={random=3,life=1..140}] at @s run tp @e[tag=projectile,tag=life_spring_effect,scores={life=0},sort=nearest,limit=1] ^ ^ ^.2 ~180 -90
execute as @e[tag=projectile,tag=life_spring,scores={random=4,life=1..140}] at @s run tp @e[tag=projectile,tag=life_spring_effect,scores={life=0},sort=nearest,limit=1] ^ ^ ^.2 ~-90 -90



##### Heal




###### Death
execute at @e[tag=projectile,tag=life_spring,scores={life=170..}] run kill @e[tag=life_spring_effect,distance=..7]
kill @e[tag=projectile,tag=life_spring,scores={life=170..}]
