
execute as @e[tag=projectile,tag=last_notch_lightning,tag=!placed] at @s run particle angry_villager ~ ~.3 ~ .3 .3 .3 0 10

execute as @e[tag=projectile,tag=last_notch_lightning,tag=!placed] at @s run particle angry_villager ~ ~.3 ~ .3 .3 .3 0 10
execute as @e[tag=projectile,tag=last_notch_lightning,tag=!placed] at @s run particle end_rod ~ ~ ~ 0 0 0 0 2
execute as @e[tag=projectile,tag=last_notch_lightning,tag=!placed] at @s run tp @s ^ ^ ^3
execute as @e[tag=projectile,tag=last_notch_lightning,tag=!placed] at @s run tp @a[tag=last_lightning,sort=nearest,limit=1] ~ ~.5 ~

execute as @e[tag=projectile,tag=last_notch_lightning,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
tag @e[tag=projectile,tag=last_notch_lightning,tag=!placed,scores={life=40..}] add placed


##### End of dash
execute as @e[tag=projectile,tag=last_notch_lightning,tag=placed] at @s align y run tp @s ~ ~ ~ 0 0
execute as @e[tag=projectile,tag=last_notch_lightning,tag=placed] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @e[tag=projectile,tag=last_notch_lightning,tag=placed] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @e[tag=projectile,tag=last_notch_lightning,tag=placed] at @s run tp @a[tag=last_lightning,sort=nearest,limit=1] ~ ~1 ~


##### Dmg 
execute as @e[tag=projectile,tag=last_notch_lightning,tag=placed] at @s run particle explosion_emitter ~ ~.5 ~ 1 .2 1 0 2
execute as @e[tag=projectile,tag=last_notch_lightning,tag=placed] at @s run playsound entity.wind_charge.wind_burst ambient @a ~ ~ ~ 2 0
execute as @e[tag=projectile,tag=last_notch_lightning,tag=placed] at @s run playsound entity.wind_charge.wind_burst ambient @a ~ ~ ~ 2 0
execute as @e[tag=projectile,tag=last_notch_lightning,tag=placed] at @s run playsound entity.generic.explode ambient @a ~ ~ ~ 1 0
execute as @e[tag=projectile,tag=last_notch_lightning,tag=placed] at @s run summon lightning_bolt
execute as @e[tag=projectile,tag=last_notch_lightning,tag=placed] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"instant_effect",Radius:6.5f,Duration:17}
execute as @e[tag=projectile,tag=last_notch_lightning,tag=placed] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust .8 .8 .1 1.4",Radius:6.5f,Duration:17}
execute as @e[tag=projectile,tag=last_notch_lightning,tag=placed] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"cloud",Radius:6.5f,Duration:17}
execute as @e[tag=projectile,tag=last_notch_lightning,tag=placed] at @s run scoreboard players add @e[tag=enemy,distance=..6.5] dmg 50
execute if entity @e[tag=projectile,tag=last_notch_lightning,tag=placed] run function code:units/health/damage



execute if entity @e[tag=projectile,tag=last_notch_lightning,tag=placed] run tag @e[tag=last_lightning] remove channeling
execute if entity @e[tag=projectile,tag=last_notch_lightning,tag=placed] run tag @e[tag=summon_lightning] remove summon_lightning
execute if entity @e[tag=projectile,tag=last_notch_lightning,tag=placed] run tag @e[tag=last_lightning] remove last_lightning

execute if entity @e[tag=projectile,tag=last_notch_lightning,tag=placed] run kill @e[tag=projectile,tag=last_notch_lightning,tag=placed]
