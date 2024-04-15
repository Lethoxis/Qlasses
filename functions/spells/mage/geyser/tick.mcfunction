
##### Summon instance
tag @e[tag=projectile,tag=geyser] add spawnProjectile
function code:misc/spawn_projectile
execute as @e[tag=projectile,tag=geyser] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add geyser_instance




###### Death
kill @e[tag=geyser,scores={life=1..}]
