

execute as @e[tag=projectile,tag=thundersurge,scores={life=65}] at @s run tag @e[tag=enemy,distance=..6.5] add thundersurged


##### VSFX
execute as @e[tag=thundersurged] at @s run playsound entity.lightning_bolt.impact ambient @a ~ ~ ~ .7 .8
execute as @e[tag=thundersurged] at @s run playsound entity.lightning_bolt.thunder ambient @a ~ ~ ~ 1.5 1.2

execute as @e[tag=projectile,tag=thundersurge,scores={life=65}] at @s at @e[tag=thundersurged,distance=..6.5] run particle dust_color_transition{from_color:[1.0, 1.0, .7], scale:1.3, to_color:[.3, .3, .3]} ~ ~7 ~ .1 1 .1 0 20
execute as @e[tag=projectile,tag=thundersurge,scores={life=65}] at @s at @e[tag=thundersurged,distance=..6.5] run particle dust_color_transition{from_color:[1.0, 1.0, .7], scale:1.3, to_color:[.3, .3, .3]} ~ ~5 ~ .1 1 .1 0 20
execute as @e[tag=projectile,tag=thundersurge,scores={life=65}] at @s at @e[tag=thundersurged,distance=..6.5] run particle dust_color_transition{from_color:[1.0, 1.0, .7], scale:1.3, to_color:[.3, .3, .3]} ~ ~3 ~ .1 1 .1 0 20
execute as @e[tag=projectile,tag=thundersurge,scores={life=65}] at @s at @e[tag=thundersurged,distance=..6.5] run particle instant_effect ~ ~7 ~ .1 1 .1 0 20
execute as @e[tag=projectile,tag=thundersurge,scores={life=65}] at @s at @e[tag=thundersurged,distance=..6.5] run particle instant_effect ~ ~5 ~ .1 1 .1 0 20
execute as @e[tag=projectile,tag=thundersurge,scores={life=65}] at @s at @e[tag=thundersurged,distance=..6.5] run particle instant_effect ~ ~3 ~ .1 1 .1 0 20
execute as @e[tag=projectile,tag=thundersurge,scores={life=65}] at @s at @e[tag=thundersurged,distance=..6.5] run particle flash ~ ~3 ~ .1 1 .1 0 10

execute as @e[tag=projectile,tag=thundersurge,scores={life=65}] at @s at @e[tag=thundersurged,distance=..6.5] facing entity @e[tag=thundersurged,distance=..12,sort=random,limit=1] feet run particle dust_color_transition{from_color:[1.0, 1.0, .7], scale:.8, to_color:[.3, .3, .3]} ^ ^.9 ^1 .4 .2 .4 0 20
execute as @e[tag=projectile,tag=thundersurge,scores={life=65}] at @s at @e[tag=thundersurged,distance=..6.5] facing entity @e[tag=thundersurged,distance=..12,sort=random,limit=1] feet run particle dust_color_transition{from_color:[1.0, 1.0, .7], scale:.8, to_color:[.3, .3, .3]} ^ ^.9 ^2 .4 .2 .4 0 20
execute as @e[tag=projectile,tag=thundersurge,scores={life=65}] at @s at @e[tag=thundersurged,distance=..6.5] facing entity @e[tag=thundersurged,distance=..12,sort=random,limit=1] feet run particle dust_color_transition{from_color:[1.0, 1.0, .7], scale:.8, to_color:[.3, .3, .3]} ^ ^.9 ^3 .4 .2 .4 0 20
execute as @e[tag=projectile,tag=thundersurge,scores={life=65}] at @s at @e[tag=thundersurged,distance=..6.5] facing entity @e[tag=thundersurged,distance=..12,sort=random,limit=1] feet run particle dust_color_transition{from_color:[1.0, 1.0, .7], scale:.8, to_color:[.3, .3, .3]} ^ ^.9 ^4 .4 .2 .4 0 20



##### Dmg
scoreboard players set #thundersurgeDamage value 12
execute as @e[tag=projectile,tag=thundersurge,scores={life=65}] at @s as @e[tag=thundersurged,distance=..6.5] run scoreboard players add #thundersurgeDamage value 4
execute as @e[tag=projectile,tag=thundersurge,scores={life=65}] at @s as @e[tag=thundersurged,distance=..6.5] run scoreboard players operation @s dmg += #thundersurgeDamage value
function code:units/health/damage




tag @e[tag=thundersurged] remove thundersurged
