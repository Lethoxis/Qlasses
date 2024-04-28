
effect give @a[tag=summon_lightning] levitation 2 0 true


tag @a[tag=summon_lightning] add spawnProjectile
function code:misc/player_spawn_projectile
execute as @a[tag=summon_lightning] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add notch_lightning

execute as @a[tag=summon_lightning] at @s run playsound entity.warden.attack_impact ambient @a ~ ~ ~ 1 .8

##### Place on ground
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step
function code:spells/mage/notch/lightning_step

execute as @e[tag=projectile,tag=notch_lightning,tag=!placed] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=notch_lightning,tag=!placed] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=notch_lightning,tag=!placed] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[tag=projectile,tag=notch_lightning,tag=!placed] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~

execute as @e[tag=projectile,tag=notch_lightning] at @s align y run tp @s ~ ~ ~ 0 0
execute as @e[tag=projectile,tag=notch_lightning] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @e[tag=projectile,tag=notch_lightning] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~


##### Dmg 
execute as @e[tag=projectile,tag=notch_lightning] at @s run summon lightning_bolt
execute as @e[tag=projectile,tag=notch_lightning] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"instant_effect",Radius:4.5f,Duration:10}
execute as @e[tag=projectile,tag=notch_lightning] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust .8 .8 .1 1.1",Radius:4.5f,Duration:10}
execute as @e[tag=projectile,tag=notch_lightning] at @s run scoreboard players add @e[tag=enemy,distance=..4.5] dmg 30
function code:units/health/damage


kill @e[tag=projectile,tag=notch_lightning]

tag @e[tag=summon_lightning] remove summon_lightning
tag @e[tag=last_lightning] remove last_lightning
