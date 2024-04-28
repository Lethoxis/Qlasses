
##### Dashing
execute as @e[tag=projectile,tag=blitz_dash,scores={life=18..}] at @s unless block ^ ^.2 ^1 air run scoreboard players set @s life 999
execute as @e[tag=projectile,tag=blitz_dash,scores={life=18..}] at @s unless block ^ ^.2 ^2 air run scoreboard players set @s life 999
execute as @e[tag=projectile,tag=blitz_dash,scores={life=18..}] at @s unless block ^ ^.2 ^3 air run scoreboard players set @s life 999



#execute as @e[tag=projectile,tag=blitz_dash,scores={life=18..}] at @s run playsound entity.wind_charge.wind_burst ambient @a ~ ~ ~ 1 2
execute as @e[tag=projectile,tag=blitz_dash,scores={life=18..}] at @s run playsound block.enchantment_table.use ambient @a ~ ~ ~ 2 2

execute as @e[tag=projectile,tag=blitz_dash,scores={life=18..}] at @s run particle dust{color:[1.0, 1.0, 0.0], scale:1} ^ ^.9 ^ .2 .2 .2 .02 20
execute as @e[tag=projectile,tag=blitz_dash,scores={life=18..}] at @s run particle angry_villager ^ ^.6 ^ .2 .2 .2 .02 5
execute as @e[tag=projectile,tag=blitz_dash,scores={life=18..}] at @s run particle dust{color:[1.0, 1.0, 0.0], scale:1} ^ ^.9 ^.8 .2 .2 .2 .02 20
execute as @e[tag=projectile,tag=blitz_dash,scores={life=18..}] at @s run particle angry_villager ^ ^.6 ^.8 .2 .2 .2 .02 5
execute as @e[tag=projectile,tag=blitz_dash,scores={life=18..}] at @s run particle dust{color:[1.0, 1.0, 0.0], scale:1} ^ ^.9 ^1.6 .2 .2 .2 .02 20
execute as @e[tag=projectile,tag=blitz_dash,scores={life=18..}] at @s run particle angry_villager ^ ^.6 ^1.6 .2 .2 .2 .02 5
execute as @e[tag=projectile,tag=blitz_dash,scores={life=18..}] at @s run particle sweep_attack ^ ^.6 ^3.5 .2 .2 .2 .02 2

execute as @e[tag=projectile,tag=blitz_dash,scores={life=18..}] at @s run tp @a[tag=blitz_dashing,sort=nearest,limit=1] ^ ^ ^2
execute as @e[tag=projectile,tag=blitz_dash,scores={life=18..}] at @s run tp @s ^ ^ ^2



##### Hit enemy
execute as @e[tag=projectile,tag=blitz_dash,scores={life=18..}] at @s if entity @e[tag=enemy,distance=..1.4,sort=nearest,limit=1] run playsound entity.wind_charge.wind_burst ambient @a ~ ~ ~ 1 2
execute as @e[tag=projectile,tag=blitz_dash,scores={life=18..}] at @s at @e[tag=enemy,distance=..1.4] run particle dust_color_transition{from_color:[1.0, 1.0, 0.0], scale:1, to_color:[.7, .7, .7]} ~ ~3 ~ 0 1 0 0 40
execute as @e[tag=projectile,tag=blitz_dash,scores={life=18..}] at @s run scoreboard players add @e[tag=enemy,distance=..1.4] dmg 8
execute if entity @e[tag=projectile,tag=blitz_dash,scores={life=18..}] run function code:units/health/damage
