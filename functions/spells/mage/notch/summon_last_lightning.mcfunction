
tag @a[tag=summon_lightning] add spawnProjectile
function code:misc/player_spawn_projectile
execute as @a[tag=summon_lightning] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add notch_lightning
execute as @a[tag=last_lightning] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add last_notch_lightning

execute as @a[tag=summon_lightning] at @s run playsound entity.warden.attack_impact ambient @a ~ ~ ~ 1 .8

##### Place on ground
function code:spells/mage/notch/last_lightning_step

tag @e[tag=summon_lightning] remove summon_lightning
