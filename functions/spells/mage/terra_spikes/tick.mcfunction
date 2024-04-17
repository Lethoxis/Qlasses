
##### Going
execute as @e[tag=projectile,tag=terra_spikes,scores={life=1..}] at @s run tp @s ^ ^ ^1


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

execute as @e[tag=projectile,tag=terra_spikes] at @s run tag @e[tag=projectile,tag=!terra_spikes,scores={life=0},distance=..0.2] add terra_spikes_spike
execute as @e[tag=projectile,tag=terra_spikes_spike,scores={life=0}] run data merge entity @s {block_state:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"frustum"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-3f,-1.5f],scale:[3f,3f,3f]}}

execute as @e[tag=projectile,tag=terra_spikes,tag=!large] at @s run tp @e[tag=projectile,tag=terra_spikes_spike,scores={life=0},sort=nearest,limit=1] ^-1 ^ ^
execute as @e[tag=projectile,tag=terra_spikes,tag=!large] at @s run tp @e[tag=projectile,tag=terra_spikes_spike,scores={life=0},sort=nearest,limit=1] ^1 ^ ^

execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tp @e[tag=projectile,tag=terra_spikes_spike,scores={life=0},sort=nearest,limit=1] ^-2.5 ^ ^
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tp @e[tag=projectile,tag=terra_spikes_spike,scores={life=0},sort=nearest,limit=1] ^-1.5 ^ ^
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tp @e[tag=projectile,tag=terra_spikes_spike,scores={life=0},sort=nearest,limit=1] ^-0.5 ^ ^
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tp @e[tag=projectile,tag=terra_spikes_spike,scores={life=0},sort=nearest,limit=1] ^0.5 ^ ^
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tp @e[tag=projectile,tag=terra_spikes_spike,scores={life=0},sort=nearest,limit=1] ^1.5 ^ ^
execute as @e[tag=projectile,tag=terra_spikes,tag=large] at @s run tp @e[tag=projectile,tag=terra_spikes_spike,scores={life=0},sort=nearest,limit=1] ^2.5 ^ ^



###### Death
kill @e[tag=projectile,tag=terra_spikes,tag=large,scores={life=6..}]
kill @e[tag=projectile,tag=terra_spikes,scores={life=12..}]
