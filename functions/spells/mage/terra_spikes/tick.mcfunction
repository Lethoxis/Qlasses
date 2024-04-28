
##### Going
execute as @e[tag=projectile,tag=terra_spikes,scores={life=1..}] at @s run tp @s ^ ^ ^.8
execute as @e[tag=projectile,tag=terra_spikes,tag=!large,scores={life=1..}] at @s run tp @s ^ ^ ^.3


##### Spikes
execute as @e[tag=projectile,tag=terra_spikes] at @s run tag @s add spawnProjectile
execute as @e[tag=projectile,tag=terra_spikes] at @s run tag @s add blockDisplay
function code:misc/spawn_projectile
execute as @e[tag=projectile,tag=terra_spikes] at @s run tag @s add spawnProjectile
execute as @e[tag=projectile,tag=terra_spikes] at @s run tag @s add blockDisplay
function code:misc/spawn_projectile
execute as @e[tag=projectile,tag=terra_spikes] at @s run tag @s add spawnProjectile
execute as @e[tag=projectile,tag=terra_spikes] at @s run tag @s add blockDisplay
function code:misc/spawn_projectile

execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tag @s add spawnProjectile
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tag @s add blockDisplay
execute if entity @e[tag=projectile,tag=terra_spikes,tag=large] run function code:misc/spawn_projectile
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tag @s add spawnProjectile
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tag @s add blockDisplay
execute if entity @e[tag=projectile,tag=terra_spikes,tag=large] run function code:misc/spawn_projectile
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tag @s add spawnProjectile
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tag @s add blockDisplay
execute if entity @e[tag=projectile,tag=terra_spikes,tag=large] run function code:misc/spawn_projectile
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tag @s add spawnProjectile
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tag @s add blockDisplay
execute if entity @e[tag=projectile,tag=terra_spikes,tag=large] run function code:misc/spawn_projectile
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tag @s add spawnProjectile
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tag @s add blockDisplay
execute if entity @e[tag=projectile,tag=terra_spikes,tag=large] run function code:misc/spawn_projectile

execute as @e[tag=projectile,tag=terra_spikes] at @s run tag @e[tag=projectile,tag=!terra_spikes,scores={life=0},distance=..0.2] add terra_spikes_spike
execute as @e[tag=projectile,tag=terra_spikes_spike,scores={life=0}] run data merge entity @s {block_state:{Name:"minecraft:pointed_dripstone"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2f,-3.3f,-2f],scale:[4f,4f,4f]}}

execute as @e[tag=projectile,tag=terra_spikes,tag=!large] at @s run tp @e[tag=projectile,tag=terra_spikes_spike,scores={life=0},sort=nearest,limit=1] ^-1.2 ^ ^
execute as @e[tag=projectile,tag=terra_spikes,tag=!large] at @s run tp @e[tag=projectile,tag=terra_spikes_spike,scores={life=0},sort=nearest,limit=1] ^1.2 ^ ^

execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tp @e[tag=projectile,tag=terra_spikes_spike,scores={life=0},sort=nearest,limit=1] ^-4.2 ^ ^
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tp @e[tag=projectile,tag=terra_spikes_spike,scores={life=0},sort=nearest,limit=1] ^-3.0 ^ ^
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tp @e[tag=projectile,tag=terra_spikes_spike,scores={life=0},sort=nearest,limit=1] ^-1.8 ^ ^
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tp @e[tag=projectile,tag=terra_spikes_spike,scores={life=0},sort=nearest,limit=1] ^-0.6 ^ ^
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tp @e[tag=projectile,tag=terra_spikes_spike,scores={life=0},sort=nearest,limit=1] ^0.6 ^ ^
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tp @e[tag=projectile,tag=terra_spikes_spike,scores={life=0},sort=nearest,limit=1] ^1.8 ^ ^
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tp @e[tag=projectile,tag=terra_spikes_spike,scores={life=0},sort=nearest,limit=1] ^3.0 ^ ^
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tp @e[tag=projectile,tag=terra_spikes_spike,scores={life=0},sort=nearest,limit=1] ^4.2 ^ ^



###### Death
kill @e[tag=projectile,tag=terra_spikes,tag=large,scores={life=6..}]
kill @e[tag=projectile,tag=terra_spikes,scores={life=15..}]
