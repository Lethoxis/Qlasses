
##### Before jumping
execute as @a[tag=aquabombing,scores={jump=0}] at @s run particle splash ^ ^.05 ^ .4 0 .4 .02 25
execute as @a[tag=aquabombing,scores={jump=0}] at @s run playsound ambient.underwater.enter ambient @a ~ ~ ~ .2 1
execute as @a[tag=aquabombing,scores={jump=0,aquabomb=..20}] at @s run playsound ambient.underwater.enter ambient @a ~ ~ ~ .2 2

scoreboard players remove @a[tag=aquabombing,scores={jump=0,aquabomb=1..}] aquabomb 1
tag @a[tag=aquabombing,scores={aquabomb=0}] remove aquabombing



execute as @a[tag=aquabombing,scores={jump=1},nbt={OnGround:0b}] at @s run playsound entity.goat.screaming.long_jump ambient @a ~ ~ ~ 2 2
execute as @a[tag=aquabombing,scores={jump=1},nbt={OnGround:0b}] at @s run playsound entity.goat.screaming.long_jump ambient @a ~ ~ ~ 2 1
execute as @a[tag=aquabombing,scores={jump=1},nbt={OnGround:0b}] at @s run playsound item.trident.throw ambient @a ~ ~ ~ 1 .7
effect give @a[tag=aquabombing,scores={jump=1},nbt={OnGround:0b}] slow_falling 1 0 true
scoreboard players set @a[tag=aquabombing,scores={jump=1..},nbt={OnGround:0b}] jump 2


execute as @a[tag=aquabombing,scores={jump=1..},nbt={OnGround:0b}] at @s run particle dust_color_transition{from_color:[1.0, 1.0, 1.0], scale:1, to_color:[.1, .1, 1.0]} ~ ~.8 ~ .3 .4 .3 0 10
execute as @a[tag=aquabombing,scores={jump=1..},nbt={OnGround:0b}] at @s run particle cloud ~ ~.8 ~ .3 .4 .3 .04 2


##### Fell
execute as @a[tag=aquabombing,scores={jump=1..},nbt={OnGround:1b}] at @s run scoreboard players add @e[tag=enemy,distance=..5] dmg 15
execute as @a[tag=aquabombing,scores={jump=1..},nbt={OnGround:1b}] at @s run function code:units/health/damage

execute as @a[tag=aquabombing,scores={jump=1..},nbt={OnGround:1b}] at @s run playsound entity.generic.splash ambient @a ~ ~ ~ 2 0
execute as @a[tag=aquabombing,scores={jump=1..},nbt={OnGround:1b}] at @s run playsound ambient.underwater.enter ambient @a ~ ~ ~ 2 0
execute as @a[tag=aquabombing,scores={jump=1..},nbt={OnGround:1b}] at @s run playsound item.bucket.fill ambient @a ~ ~ ~ 2 0
execute as @a[tag=aquabombing,scores={jump=1..},nbt={OnGround:1b}] at @s run playsound entity.zombie.attack_wooden_door ambient @a ~ ~ ~ .5 0
execute as @a[tag=aquabombing,scores={jump=1..},nbt={OnGround:1b}] at @s run summon area_effect_cloud ~ ~.03 ~ {Particle:{type:"dust_color_transition",from_color:[.1, .7, 1.0],scale:1.3,to_color:[1.0, 1.0, 1.0]},Duration:6s,Radius:5}
execute as @a[tag=aquabombing,scores={jump=1..},nbt={OnGround:1b}] at @s run summon area_effect_cloud ~ ~.2 ~ {Particle:{type:"splash"},Duration:6s,Radius:5}
execute as @a[tag=aquabombing,scores={jump=1..},nbt={OnGround:1b}] at @s run summon area_effect_cloud ~ ~.2 ~ {Particle:{type:"dripping_water"},Duration:9s,Radius:5}
execute as @a[tag=aquabombing,scores={jump=1..},nbt={OnGround:1b}] at @s run particle falling_water ^ ^1 ^ 2 .5 2 .02 500
execute as @a[tag=aquabombing,scores={jump=1..},nbt={OnGround:1b}] at @s run particle splash ^ ^1.7 ^ 2 .5 2 .02 200

execute as @a[tag=aquabombing,scores={jump=1..},nbt={OnGround:1b}] at @s run summon area_effect_cloud ~ ~.53 ~ {Particle:{type:"dust_color_transition",from_color:[.1, .7, 1.0],scale:1.3,to_color:[1.0, 1.0, 1.0]},Duration:6s,Radius:5}
execute as @a[tag=aquabombing,scores={jump=1..},nbt={OnGround:1b}] at @s run summon area_effect_cloud ~ ~.7 ~ {Particle:{type:"splash"},Duration:6s,Radius:5}
execute as @a[tag=aquabombing,scores={jump=1..},nbt={OnGround:1b}] at @s run summon area_effect_cloud ~ ~.7 ~ {Particle:{type:"dripping_water"},Duration:9s,Radius:5}
execute as @a[tag=aquabombing,scores={jump=1..},nbt={OnGround:1b}] at @s run particle falling_water ^ ^1.5 ^ 2 .5 2 .02 500
execute as @a[tag=aquabombing,scores={jump=1..},nbt={OnGround:1b}] at @s run particle splash ^ ^2 ^ 2 .5 2 .02 200
tag @a[tag=aquabombing,scores={jump=1..},nbt={OnGround:1b}] remove aquabombing

