
##### Going
execute as @e[tag=projectile,tag=vesuvius] at @s run tp @s ~ ~ ~ ~12 ~


##### Spikes
execute as @e[tag=projectile,tag=vesuvius] at @s run tag @s add spawnProjectile
execute as @e[tag=projectile,tag=vesuvius] at @s run tag @s add blockDisplay
function code:misc/spawn_projectile
execute as @e[tag=projectile,tag=vesuvius] at @s run tag @s add spawnProjectile
execute as @e[tag=projectile,tag=vesuvius] at @s run tag @s add blockDisplay
function code:misc/spawn_projectile

execute as @e[tag=projectile,tag=vesuvius] at @s run tag @e[tag=projectile,tag=!vesuvius,scores={life=0},sort=nearest,limit=2] add vesuvius_instance

execute as @e[tag=projectile,tag=vesuvius] at @s positioned ^ ^-.5 ^5 facing entity @s feet run tp @e[tag=projectile,tag=vesuvius_instance,scores={life=0},sort=nearest,limit=1] ~ ~ ~ ~ 30
execute as @e[tag=projectile,tag=vesuvius] at @s positioned ^ ^-.5 ^-5 facing entity @s feet run tp @e[tag=projectile,tag=vesuvius_instance,scores={life=0},sort=nearest,limit=1] ~ ~ ~ ~ 30


###### Death
#execute at @e[tag=projectile,tag=vesuvius,scores={life=15..}] run scoreboard players add @e[tag=enemy,distance=..6] dmg 15
#execute if entity @e[tag=projectile,tag=vesuvius,scores={life=15..}] run function code:units/health/damage
kill @e[tag=projectile,tag=vesuvius,scores={life=15..}]
