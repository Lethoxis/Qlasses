
##### Charging
execute as @e[tag=projectile,tag=thundersurge,scores={life=1}] at @s run summon area_effect_cloud ~ ~9 ~ {Particle:"campfire_cosy_smoke",Radius:1f,RadiusPerTick:0.1f,Duration:55}
execute as @e[tag=projectile,tag=thundersurge,scores={life=1}] at @s run summon area_effect_cloud ~ ~9.4 ~ {Particle:"campfire_cosy_smoke",Radius:1f,RadiusPerTick:0.1f,Duration:55}
execute as @e[tag=projectile,tag=thundersurge,scores={life=1}] at @s run summon area_effect_cloud ~ ~9.4 ~ {Particle:"falling_water",Radius:1.1f,RadiusPerTick:0.1f,Duration:55}


execute as @e[tag=projectile,tag=thundersurge] at @s run particle dust_color_transition 1 1 0 2 1 1 1 ^ ^.2 ^6.5 .04 .04 .04 .01 2
execute as @e[tag=projectile,tag=thundersurge] at @s run particle dust_color_transition 1 1 0 2 1 1 1 ^ ^.2 ^-6.5 .04 .04 .04 .01 2
execute as @e[tag=projectile,tag=thundersurge] at @s run particle dust_color_transition 1 1 0 2 1 1 1 ^6.5 ^.2 ^ .04 .04 .04 .01 2
execute as @e[tag=projectile,tag=thundersurge] at @s run particle dust_color_transition 1 1 0 2 1 1 1 ^-6.5 ^.2 ^ .04 .04 .04 .01 2
execute as @e[tag=projectile,tag=thundersurge] at @s run tp @s ~ ~ ~ ~12 ~
execute as @e[tag=projectile,tag=thundersurge] at @s run particle dust_color_transition 1 1 0 2 1 1 1 ^ ^.2 ^6.5 .04 .04 .04 .01 2
execute as @e[tag=projectile,tag=thundersurge] at @s run particle dust_color_transition 1 1 0 2 1 1 1 ^ ^.2 ^-6.5 .04 .04 .04 .01 2
execute as @e[tag=projectile,tag=thundersurge] at @s run particle dust_color_transition 1 1 0 2 1 1 1 ^6.5 ^.2 ^ .04 .04 .04 .01 2
execute as @e[tag=projectile,tag=thundersurge] at @s run particle dust_color_transition 1 1 0 2 1 1 1 ^-6.5 ^.2 ^ .04 .04 .04 .01 2
execute as @e[tag=projectile,tag=thundersurge] at @s run tp @s ~ ~ ~ ~12 ~

execute as @e[tag=projectile,tag=thundersurge] at @s run particle instant_effect ^ ^.2 ^ 2.5 0 2.5 .01 10
execute as @e[tag=projectile,tag=thundersurge,scores={life=20..23}] at @s run particle flash ^ ^9.2 ^ 1.3 0 1.3 .01 1
execute as @e[tag=projectile,tag=thundersurge,scores={life=32..34}] at @s run particle flash ^ ^9.2 ^ 1.5 0 1.5 .01 1
execute as @e[tag=projectile,tag=thundersurge,scores={life=43..46}] at @s run particle flash ^ ^9.2 ^ 1.8 0 1.8 .01 1
execute as @e[tag=projectile,tag=thundersurge,scores={life=55..60}] at @s run particle flash ^ ^9.2 ^ 2 0 2 .01 1


execute as @e[tag=projectile,tag=thundersurge] at @s run playsound weather.rain ambient @a ~ ~ ~ .3 1



##### Exploding
execute if entity @e[tag=projectile,tag=thundersurge,scores={life=65}] run function code:spells/mage/thundersurge/hit



###### Death
kill @e[tag=projectile,tag=thundersurge,scores={life=65}]
