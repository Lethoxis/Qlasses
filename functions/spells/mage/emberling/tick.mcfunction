
##### Tag new target (random : 1 = ally, 2 = enemy)
execute as @e[tag=projectile,tag=emberling] at @s unless entity @e[tag=emberling_target,distance=..16] store result score @s random run random value 1..2

execute as @e[tag=projectile,tag=emberling,scores={random=1}] at @s unless entity @e[tag=emberling_target,distance=..16] run tag @r[tag=!emberling_previous_target,distance=..16] add emberling_target
execute as @e[tag=projectile,tag=emberling] at @s unless entity @e[tag=emberling_target,distance=..16] run tag @e[tag=enemy,tag=!emberling_previous_target,distance=..16,sort=random,limit=1] add emberling_target

tag @e[tag=emberling_previous_target] remove emberling_previous_target

execute as @e[tag=projectile,tag=emberling] at @s unless entity @e[tag=emberling_target,distance=..16] run kill @s




##### Travel to target
execute as @e[tag=projectile,tag=emberling] at @s positioned ~ ~2 ~ facing entity @e[tag=emberling_target,sort=nearest,limit=1] feet run tp @s ^ ^-1.8 ^.2
execute as @e[tag=projectile,tag=emberling] at @s positioned ~ ~-2 ~ if entity @e[tag=emberling_target,distance=..2] run tp @s ~ ~-.5 ~

# Heal/hit
execute as @e[tag=projectile,tag=emberling] at @s if entity @e[type=player,tag=emberling_target,distance=..2] run say lol
execute as @e[tag=projectile,tag=emberling] at @s if entity @e[tag=enemy,tag=emberling_target,distance=..2] run scoreboard players add @e[tag=enemy,tag=emberling_target,distance=..2] dmg 6
execute as @e[tag=projectile,tag=emberling] at @s if entity @e[tag=enemy,tag=emberling_target,distance=..2] run function code:units/health/damage

execute as @e[tag=projectile,tag=emberling] at @s if entity @e[tag=emberling_target,distance=..2] run scoreboard players remove @s value 1
execute as @e[tag=projectile,tag=emberling] at @s if entity @e[tag=emberling_target,distance=..2] run tag @e[tag=emberling_target,distance=..2] add emberling_previous_target
execute as @e[tag=projectile,tag=emberling] at @s if entity @e[tag=emberling_target,distance=..2] run tag @e[tag=emberling_target,distance=..2] remove emberling_target





###### Death
kill @e[tag=projectile,tag=emberling,scores={random=..0}]
kill @e[tag=projectile,tag=emberling,scores={life=300..}]
