

##### Prep
execute as @e[tag=projectile,tag=diamond_waters,scores={life=..35}] store result score @s random run random value 1..10
execute as @e[tag=projectile,tag=diamond_waters,scores={life=..35,random=1}] at @s run summon marker ^2 ^0.0 ^ {Tags:["diamond_waters_vfx","hasLife"]}
execute as @e[tag=projectile,tag=diamond_waters,scores={life=..35,random=2}] at @s run summon marker ^1.75 ^0.8 ^ {Tags:["diamond_waters_vfx","hasLife"]}
execute as @e[tag=projectile,tag=diamond_waters,scores={life=..35,random=3}] at @s run summon marker ^1.4 ^1.40 ^ {Tags:["diamond_waters_vfx","hasLife"]}
execute as @e[tag=projectile,tag=diamond_waters,scores={life=..35,random=4}] at @s run summon marker ^0.8 ^1.75 ^ {Tags:["diamond_waters_vfx","hasLife"]}
execute as @e[tag=projectile,tag=diamond_waters,scores={life=..35,random=5}] at @s run summon marker ^0 ^2.0 ^ {Tags:["diamond_waters_vfx","hasLife"]}
execute as @e[tag=projectile,tag=diamond_waters,scores={life=..35,random=6}] at @s run summon marker ^-0.8 ^1.75 ^ {Tags:["diamond_waters_vfx","hasLife"]}
execute as @e[tag=projectile,tag=diamond_waters,scores={life=..35,random=7}] at @s run summon marker ^-1.4 ^1.40 ^ {Tags:["diamond_waters_vfx","hasLife"]}
execute as @e[tag=projectile,tag=diamond_waters,scores={life=..35,random=8}] at @s run summon marker ^-1.75 ^0.8 ^ {Tags:["diamond_waters_vfx","hasLife"]}
execute as @e[tag=projectile,tag=diamond_waters,scores={life=..35,random=9}] at @s run summon marker ^-2 ^0.0 ^ {Tags:["diamond_waters_vfx","hasLife"]}
scoreboard players add @e[tag=diamond_waters_vfx] life 0
execute as @e[tag=projectile,tag=diamond_waters,scores={life=..35}] store result score @s random run random value 1..4
execute as @e[tag=projectile,tag=diamond_waters,scores={life=..35,random=1}] at @s as @e[tag=diamond_waters_vfx,scores={life=0},sort=nearest,limit=1] at @s rotated as @e[tag=diamond_waters,sort=nearest,limit=1] run tp @s ^ ^ ^.4
execute as @e[tag=projectile,tag=diamond_waters,scores={life=..35,random=2}] at @s as @e[tag=diamond_waters_vfx,scores={life=0},sort=nearest,limit=1] at @s rotated as @e[tag=diamond_waters,sort=nearest,limit=1] run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=diamond_waters,scores={life=..35,random=3}] at @s as @e[tag=diamond_waters_vfx,scores={life=0},sort=nearest,limit=1] at @s rotated as @e[tag=diamond_waters,sort=nearest,limit=1] run tp @s ^ ^ ^-.4
execute as @e[tag=projectile,tag=diamond_waters,scores={life=..35,random=4}] at @s as @e[tag=diamond_waters_vfx,scores={life=0},sort=nearest,limit=1] at @s rotated as @e[tag=diamond_waters,sort=nearest,limit=1] run tp @s ^ ^ ^-1

execute as @e[tag=diamond_waters_vfx] at @s run particle dust_color_transition 0 1 1 1.6 0 0 0 ~ ~ ~ 0 0 0 0 1
execute as @e[tag=diamond_waters_vfx] at @s facing entity @e[tag=diamond_waters,sort=nearest,limit=1] feet run tp @s ^ ^ ^.2
execute as @e[tag=diamond_waters_vfx] at @s if entity @e[tag=diamond_waters,distance=..0.4] run kill @s




execute as @e[tag=projectile,tag=diamond_waters,scores={life=0..5}] at @s run playsound entity.breeze.inhale ambient @a ~ ~ ~ .7 0.6
execute as @e[tag=projectile,tag=diamond_waters,scores={life=5..14}] at @s run playsound entity.breeze.inhale ambient @a ~ ~ ~ .7 0.8
execute as @e[tag=projectile,tag=diamond_waters,scores={life=14..23}] at @s run playsound entity.breeze.inhale ambient @a ~ ~ ~ .7 1
execute as @e[tag=projectile,tag=diamond_waters,scores={life=23..32}] at @s run playsound entity.breeze.inhale ambient @a ~ ~ ~ .7 1.2





execute as @e[tag=projectile,tag=diamond_waters,scores={life=48}] at @s run particle item blue_wool ^ ^.15 ^ .2 .2 .2 .25 200
execute as @e[tag=projectile,tag=diamond_waters,scores={life=48}] at @s run playsound item.trident.return ambient @a ~ ~ ~ 1.5 0
execute as @e[tag=projectile,tag=diamond_waters,scores={life=48}] at @s run playsound entity.zombie.converted_to_drowned ambient @a ~ ~ ~ 1 .75
execute as @e[tag=projectile,tag=diamond_waters,scores={life=48}] at @s run playsound item.crossbow.shoot ambient @a ~ ~ ~ 2 0
execute as @e[tag=projectile,tag=diamond_waters,scores={life=48}] at @s run playsound item.crossbow.shoot ambient @a ~ ~ ~ 1 0


##### Shoot
execute as @e[tag=projectile,tag=diamond_waters] at @s as @a[tag=channeling,sort=nearest,limit=1] run tp @s ~ ~-1.3 ~ ~ ~13


tag @e[tag=projectile,tag=diamond_waters,scores={life=48..}] add spawnProjectile
function code:misc/spawn_projectile
execute as @e[tag=projectile,tag=diamond_waters,scores={life=48..}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add diamond_waters_instance


execute as @e[tag=projectile,tag=diamond_waters,scores={life=48..}] at @s run playsound ambient.underwater.enter ambient @a ~ ~ ~ .6 0



###### Death
execute as @e[tag=projectile,tag=diamond_waters,scores={life=84}] at @s run tag @a[tag=channeling,sort=nearest,limit=1] remove channeling
kill @e[tag=projectile,tag=diamond_waters,scores={life=84..}]
