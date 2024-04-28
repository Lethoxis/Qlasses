
##### Going
execute as @e[tag=projectile,tag=himalaya,scores={life=1..}] at @s run tp @s ^ ^ ^2


##### Spikes
execute as @e[tag=projectile,tag=himalaya] at @s run tag @s add spawnProjectile
execute as @e[tag=projectile,tag=himalaya] at @s run tag @s add blockDisplay
function code:misc/spawn_projectile

execute as @e[tag=projectile,tag=himalaya] at @s run tag @e[tag=projectile,tag=!himalaya,scores={life=0},sort=nearest,limit=1] add himalaya_spike
tag @e[tag=projectile,tag=himalaya_spike,scores={life=0}] add himalaya_instance
execute as @e[tag=projectile,tag=himalaya_spike,scores={life=0}] run data merge entity @s {block_state:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2f,0.7f,-2f],scale:[4f,4f,4f]}}


execute as @e[tag=projectile,tag=himalaya] at @s run tag @s add spawnProjectile
execute as @e[tag=projectile,tag=himalaya] at @s run tag @s add blockDisplay
function code:misc/spawn_projectile
execute as @e[tag=projectile,tag=himalaya] at @s run tag @e[tag=projectile,tag=!himalaya,tag=!himalaya_spike,scores={life=0},sort=nearest,limit=1] add himalaya_instance
execute as @e[tag=projectile,tag=himalaya_instance,tag=!himalaya_spike,scores={life=0}] run data merge entity @s {block_state:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"frustum"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2f,-3.3f,-2f],scale:[4f,4f,4f]}}



###### Death
kill @e[tag=projectile,tag=himalaya,scores={life=13..}]
