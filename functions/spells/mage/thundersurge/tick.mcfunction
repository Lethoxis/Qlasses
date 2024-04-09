
##### Charging
execute as @e[tag=thundersurge,scores={life=1}] at @s run summon area_effect_cloud ~ ~9 ~ {Particle:"campfire_cozy_smoke",Radius:0,RadiusPerTick:0.1,Duration:65s}
execute as @e[tag=thundersurge,scores={life=1}] at @s run summon area_effect_cloud ~ ~9.4 ~ {Particle:"campfire_cozy_smoke",Radius:0,RadiusPerTick:0.1,Duration:65s}


execute as @e[tag=thundersurge,scores={life=..65}] at @s run particle dust_color_transition 1 1 0 1.2 1 1 1 ^ ^.2 ^6.5 .04 .04 .04 .01 2
execute as @e[tag=thundersurge,scores={life=..65}] at @s run particle dust_color_transition 1 1 0 1.2 1 1 1 ^ ^.2 ^-6.5 .04 .04 .04 .01 2
execute as @e[tag=thundersurge,scores={life=..65}] at @s run tp @s ~ ~ ~ ~12 ~

execute as @e[tag=thundersurge,scores={life=..65}] at @s run playsound block.wool.hit ambient @a ~ ~ ~ .6 0



##### Exploding
execute if entity @e[tag=thundersurge,scores={life=65}] run function code:spells/mage/thundersurge/hit



###### Death
kill @e[tag=thundersurge,scores={life=65}]
