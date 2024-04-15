
execute as @e[tag=projectile,tag=emberling] at @s run particle dust_color_transition 1 0 0 2 1 1 0 ~ ~ ~ .02 .02 .02 0 2 force
execute as @e[tag=projectile,tag=emberling] at @s run particle small_flame ~ ~ ~ .05 .05 .05 0.01 5 force
execute as @e[tag=projectile,tag=emberling,scores={value=..0}] at @s run particle firework ~ ~ ~ .05 .05 .05 0.03 5 force


##### Tag new target (random : 1 = ally, 2 = enemy)
execute as @e[tag=projectile,tag=emberling] at @s unless entity @e[tag=emberling_target,distance=..16] store result score @s random run random value 1..2

execute as @e[tag=projectile,tag=emberling,scores={random=1}] at @s unless entity @e[tag=emberling_target,distance=..16] run tag @r[tag=!emberling_previous_target,distance=1..16] add emberling_target
execute as @e[tag=projectile,tag=emberling] at @s unless entity @e[tag=emberling_target,distance=..16] run tag @e[tag=enemy,tag=!emberling_previous_target,distance=..16,sort=random,limit=1] add emberling_target
execute as @e[tag=projectile,tag=emberling] at @s unless entity @e[tag=emberling_target,distance=..16] run tag @r[tag=!emberling_previous_target,distance=..16] add emberling_target

tag @e[tag=emberling_previous_target] remove emberling_previous_target

execute as @e[tag=projectile,tag=emberling] at @s unless entity @e[tag=emberling_target,distance=..16] run scoreboard players set @s value 0




##### Travel to target
execute as @e[tag=projectile,tag=emberling] at @s facing entity @e[tag=emberling_target,sort=nearest,limit=1] feet positioned ~ ~.1 ~ run tp @s ^ ^ ^.5

# Heal/hit
execute as @e[tag=projectile,tag=emberling] at @s at @e[tag=emberling_target,distance=..1] run playsound entity.allay.item_taken ambient @a ~ ~ ~ 2 1
execute as @e[tag=projectile,tag=emberling] at @s at @e[tag=emberling_target,distance=..1] run particle flame ~ ~1 ~ .3 .4 .3 0.04 50
execute as @e[tag=projectile,tag=emberling] at @s if entity @e[tag=emberling_target,distance=..1] run scoreboard players remove @s value 1

execute as @e[tag=projectile,tag=emberling] at @s if entity @e[tag=enemy,tag=emberling_target,distance=..1] run scoreboard players add @e[tag=enemy,tag=emberling_target,distance=..1] dmg 6
execute as @e[tag=projectile,tag=emberling] at @s if entity @e[tag=enemy,tag=emberling_target,distance=..1] run function code:units/health/damage


execute as @e[tag=projectile,tag=emberling] at @s if entity @e[tag=emberling_target,distance=..1] run tag @e[tag=emberling_target,distance=..1] add emberling_previous_target
execute as @e[tag=projectile,tag=emberling] at @s if entity @e[tag=emberling_target,distance=..1] run tag @e[tag=emberling_target,distance=..1] remove emberling_target




execute as @e[tag=projectile,tag=emberling,scores={value=0}] at @s run playsound entity.allay.death ambient @a ~ ~ ~ .8 1.5
scoreboard players remove @e[tag=projectile,tag=emberling,scores={value=..0}] value 1
execute as @e[tag=projectile,tag=emberling,scores={value=..0}] at @s run tp @s ~ ~1.5 ~
execute as @e[tag=projectile,tag=emberling,scores={value=-12}] at @s run tp @s ~ ~-30 ~


###### Death
kill @e[tag=projectile,tag=emberling,scores={value=..-12}]
kill @e[tag=projectile,tag=emberling,scores={life=500..}]
