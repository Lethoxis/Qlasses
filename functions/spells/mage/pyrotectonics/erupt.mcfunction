
#### First proc: dmg
execute as @e[tag=pyrotectonics_erupt,scores={life=1}] at @s run scoreboard players add @e[tag=enemy,distance=..1.5] dmg 13
execute as @e[tag=pyrotectonics_erupt,scores={life=1}] run function code:units/health/damage

execute as @e[tag=pyrotectonics_erupt,scores={life=1}] at @s as @e[tag=enemy,distance=..1.5] run tag @s add pyrotectonicsHit
execute if entity @e[tag=pyrotectonicsHit] run function code:spells/mage/pyrotectonics/hitenemy



#### VSFX
execute as @e[tag=pyrotectonics_erupt,scores={life=1}] at @s run playsound entity.blaze.shoot ambient @a ~ ~ ~ 2 .8
execute as @e[tag=pyrotectonics_erupt,scores={life=1}] at @s run playsound block.fire.extinguish ambient @a ~ ~ ~ 1.5 1.5
execute as @e[tag=pyrotectonics_erupt,scores={life=1}] at @s run playsound entity.zombie.infect ambient @a ~ ~ ~ 2.5 1

execute as @e[tag=pyrotectonics_erupt,scores={life=1..}] at @s run summon area_effect_cloud ~ ~ ~ {Particle:flame,Duration:6s,Radius:1.5}
execute as @e[tag=pyrotectonics_erupt,scores={life=1..}] at @s run particle flame ~ ~1.2 ~ .6 .3 .6 .2 50
execute as @e[tag=pyrotectonics_erupt,scores={life=1..}] at @s run particle smoke ~ ~1 ~ .6 .3 .6 0.2 80
execute as @e[tag=pyrotectonics_erupt,scores={life=1..}] at @s run particle dust 1 .2 0 1.5 ~ ~1 ~ .6 .4 .6 0.2 20
execute as @e[tag=pyrotectonics_erupt,scores={life=1..}] at @s run tp @s ~ ~.35 ~

execute as @e[tag=pyrotectonics_erupt,scores={life=1..}] at @s run summon area_effect_cloud ~ ~ ~ {Particle:flame,Duration:6s,Radius:1.5}
execute as @e[tag=pyrotectonics_erupt,scores={life=1..}] at @s run particle flame ~ ~1.2 ~ .6 .3 .6 .2 50
execute as @e[tag=pyrotectonics_erupt,scores={life=1..}] at @s run particle smoke ~ ~1 ~ .6 .3 .6 0.2 80
execute as @e[tag=pyrotectonics_erupt,scores={life=1..}] at @s run particle dust 1 .2 0 1.5 ~ ~1 ~ .6 .4 .6 0.2 20
execute as @e[tag=pyrotectonics_erupt,scores={life=1..}] at @s run tp @s ~ ~.35 ~



###### Death
kill @e[tag=volcano,scores={life=4..}]
