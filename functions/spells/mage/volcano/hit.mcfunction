
execute as @e[tag=volcano,scores={life=24}] at @s run scoreboard players add @e[tag=enemy,distance=..5] dmg 20

execute as @e[tag=volcano,scores={life=24}] at @s as @e[tag=enemy,distance=..5] run tag @s add volcanoHit
execute if entity @e[tag=volcanoHit] run function code:spells/mage/volcano/hitenemy




execute if entity @e[tag=volcano,scores={life=24}] run function code:units/health/damage

execute as @e[tag=volcano,scores={life=24}] at @s run playsound entity.blaze.shoot ambient @a ~ ~ ~ 2 .8
execute as @e[tag=volcano,scores={life=24}] at @s run playsound block.fire.extinguish ambient @a ~ ~ ~ 1.5 1.5
execute as @e[tag=volcano,scores={life=24}] at @s run playsound entity.zombie.infect ambient @a ~ ~ ~ 2.5 1

execute as @e[tag=volcano,scores={life=24}] at @s run summon area_effect_cloud ~ ~ ~ {Particle:flame,Duration:6s,Radius:5}
execute as @e[tag=volcano,scores={life=24..}] at @s run summon area_effect_cloud ~ ~ ~ {Particle:lava,Duration:2s,Radius:4}
execute as @e[tag=volcano,scores={life=24..}] at @s run particle flame ~ ~1.2 ~ 1.6 .5 1.6 .2 100
execute as @e[tag=volcano,scores={life=24..}] at @s run particle smoke ~ ~1 ~ 1.8 .5 1.8 0.2 200
execute as @e[tag=volcano,scores={life=24..}] at @s run particle dust 1 .2 0 1.5 ~ ~1 ~ 1.5 1 1.5 0.2 80
execute as @e[tag=volcano,scores={life=24..}] at @s run tp @s ~ ~2 ~
