

execute as @e[tag=thundersurge,scores={life=65}] run tag @e[tag=enemy,distance=..6.5] add thundersurged


scoreboard players set #thundersurgeDamage value 20
execute as @e[tag=thundersurge,scores={life=65}] as @e[tag=thundersurged,distance=..6.5] run scoreboard players add #thundersurgeDamage value 4


execute as @e[tag=thundersurge,scores={life=65}] at @s as @e[tag=thundersurged,distance=..6.5] run scoreboard players operation @s dmg += #thundersurgeDamage value
execute as @e[tag=thundersurge,scores={life=65}] run function code:units/health/damage


##### VSFX
execute as @e[tag=thundersurge,scores={life=65}] at @s run playsound entity.blaze.shoot ambient @a ~ ~ ~ 2 2
execute as @e[tag=thundersurge,scores={life=65}] at @s run playsound block.fire.extinguish ambient @a ~ ~ ~ 1.5 2
execute as @e[tag=thundersurge,scores={life=65}] at @s at @e[tag=thundersurged,distance=..6.5] run playsound entity.zombie.infect ambient @a ~ ~ ~ 1 2

execute as @e[tag=thundersurge,scores={life=65}] at @s at @e[tag=thundersurged,distance=..6.5] run particle dust_color_transition 1 1 .7 .8 .3 .3 .3 ~ ~7 ~ .1 1 .1 0 20
execute as @e[tag=thundersurge,scores={life=65}] at @s at @e[tag=thundersurged,distance=..6.5] run particle dust_color_transition 1 1 .7 .8 .3 .3 .3 ~ ~5 ~ .1 1 .1 0 20
execute as @e[tag=thundersurge,scores={life=65}] at @s at @e[tag=thundersurged,distance=..6.5] run particle dust_color_transition 1 1 .7 .8 .3 .3 .3 ~ ~3 ~ .1 1 .1 0 20

execute as @e[tag=thundersurge,scores={life=65}] at @s at @e[tag=thundersurged,distance=..6.5] facing entity @e[tag=thundersurged,distance=..12,sort=random,limit=1] feet run particle dust_color_transition 1 1 .7 .8 .3 .3 .3 ^ ^.9 ^1 .4 .2 .4 0 20
execute as @e[tag=thundersurge,scores={life=65}] at @s at @e[tag=thundersurged,distance=..6.5] facing entity @e[tag=thundersurged,distance=..12,sort=random,limit=1] feet run particle dust_color_transition 1 1 .7 .8 .3 .3 .3 ^ ^.9 ^2 .4 .2 .4 0 20
execute as @e[tag=thundersurge,scores={life=65}] at @s at @e[tag=thundersurged,distance=..6.5] facing entity @e[tag=thundersurged,distance=..12,sort=random,limit=1] feet run particle dust_color_transition 1 1 .7 .8 .3 .3 .3 ^ ^.9 ^3 .4 .2 .4 0 20
execute as @e[tag=thundersurge,scores={life=65}] at @s at @e[tag=thundersurged,distance=..6.5] facing entity @e[tag=thundersurged,distance=..12,sort=random,limit=1] feet run particle dust_color_transition 1 1 .7 .8 .3 .3 .3 ^ ^.9 ^4 .4 .2 .4 0 20


tag @e[tag=thundersurged] remove thundersurged
