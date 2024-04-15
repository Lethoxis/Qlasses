

##### Prep
execute as @e[tag=projectile,tag=twinstream,tag=left,scores={life=..20}] at @s at @a[tag=channeling,sort=nearest,limit=1] run particle falling_water ^ ^.05 ^ .3 .1 .3 .2 50


execute as @e[tag=projectile,tag=twinstream,tag=left,scores={life=..20}] at @s positioned ~ ~-1.35 ~ as @a[tag=channeling,sort=nearest,limit=1] run tp @s ^-.65 ^ ^

execute as @e[tag=projectile,tag=twinstream,tag=left,scores={life=..20}] at @s at @a[tag=channeling,sort=nearest,limit=1] positioned ~ ~1.35 ~ run tp @s ^.65 ^ ^ ~ 0
execute as @e[tag=projectile,tag=twinstream,tag=right,scores={life=..20}] at @s at @a[tag=channeling,sort=nearest,limit=1] positioned ~ ~1.35 ~ run tp @s ^-.65 ^ ^ ~ 0


execute as @e[tag=projectile,tag=twinstream,scores={life=20}] at @s run particle item blue_wool ^ ^.15 ^ .05 .05 .05 .2 20
execute as @e[tag=projectile,tag=twinstream,scores={life=20}] at @s run playsound item.trident.return ambient @a ~ ~ ~ 1 2
execute as @e[tag=projectile,tag=twinstream,scores={life=20}] at @s run playsound entity.zombie.converted_to_drowned ambient @a ~ ~ ~ .8
execute as @e[tag=projectile,tag=twinstream,scores={life=20}] at @s run playsound entity.zombie.attack_wooden_door ambient @a ~ ~ ~ .4 2
execute as @e[tag=projectile,tag=twinstream,tag=left,scores={life=20}] at @s run tag @a[tag=channeling,sort=nearest,limit=1] remove channeling


##### Shoot
function code:spells/mage/twinstream/step

execute as @e[tag=projectile,tag=twinstream] at @s run particle dust_color_transition 0 1 1 1 0 0 1 ^.30 ^.00 ^.0 0 0 0 0 1
execute as @e[tag=projectile,tag=twinstream,scores={life=20..}] at @s run tp @s ^ ^ ^.3
execute as @e[tag=projectile,tag=twinstream] at @s run particle dust_color_transition 0 1 1 1 0 0 1 ^.21 ^.21 ^ 0 0 0 0 1
execute as @e[tag=projectile,tag=twinstream,scores={life=20..}] at @s run tp @s ^ ^ ^.3
execute as @e[tag=projectile,tag=twinstream] at @s run particle dust_color_transition 0 1 1 1 0 0 1 ^.00 ^.3 ^ 0 0 0 0 1
execute as @e[tag=projectile,tag=twinstream,scores={life=20..}] at @s run tp @s ^ ^ ^.3
execute as @e[tag=projectile,tag=twinstream] at @s run particle dust_color_transition 0 1 1 1 0 0 1 ^-.21 ^.21 ^ 0 0 0 0 1
execute as @e[tag=projectile,tag=twinstream,scores={life=20..}] at @s run tp @s ^ ^ ^.3

function code:spells/mage/twinstream/step

execute as @e[tag=projectile,tag=twinstream] at @s run particle dust_color_transition 0 1 1 1 0 0 1 ^-.30 ^.00 ^ 0 0 0 0 1
execute as @e[tag=projectile,tag=twinstream,scores={life=20..}] at @s run tp @s ^ ^ ^.3
execute as @e[tag=projectile,tag=twinstream] at @s run particle dust_color_transition 0 1 1 1 0 0 1 ^-.21 ^-.21 ^ 0 0 0 0 1
execute as @e[tag=projectile,tag=twinstream,scores={life=20..}] at @s run tp @s ^ ^ ^.3
execute as @e[tag=projectile,tag=twinstream] at @s run particle dust_color_transition 0 1 1 1 0 0 1 ^.00 ^-.30 ^ 0 0 0 0 1
execute as @e[tag=projectile,tag=twinstream,scores={life=20..}] at @s run tp @s ^ ^ ^.3
execute as @e[tag=projectile,tag=twinstream] at @s run particle dust_color_transition 0 1 1 1 0 0 1 ^.21 ^-.21 ^ 0 0 0 0 1
execute as @e[tag=projectile,tag=twinstream,scores={life=20..}] at @s run tp @s ^ ^ ^.3



###### Death
kill @e[tag=projectile,tag=twinstream,scores={life=45..}]
