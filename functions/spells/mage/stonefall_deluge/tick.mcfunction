
##### VSFX
execute as @e[tag=stonefall_deluge_vfx,scores={life=1..}] at @s run particle dust{color:[.5, .25, .1], scale:1.5} ^ ^.1 ^6.3 .1 0 .1 .01 3
execute as @e[tag=stonefall_deluge_vfx,scores={life=1..}] at @s run particle dust{color:[.5, .25, .1], scale:1.5} ^ ^.1 ^-6.3 .1 0 .1 .01 3
execute as @e[tag=stonefall_deluge_vfx,scores={life=170..}] at @s run particle dust{color:[.5, .25, .1], scale:1.5} ^ ^.4 ^6.3 .0 .4 0 .01 6
execute as @e[tag=stonefall_deluge_vfx,scores={life=170..}] at @s run particle dust{color:[.5, .25, .1], scale:1.5} ^ ^.4 ^-6.3 .0 .4 0 .01 6
execute as @e[tag=stonefall_deluge_vfx,scores={life=1..}] at @s run tp @s ~ ~ ~ ~9 ~
execute as @e[tag=stonefall_deluge_vfx,scores={life=1..}] at @s run particle dust{color:[.5, .25, .1], scale:1.5} ^ ^.1 ^6.3 .1 0 .1 .01 3
execute as @e[tag=stonefall_deluge_vfx,scores={life=1..}] at @s run particle dust{color:[.5, .25, .1], scale:1.5} ^ ^.1 ^-6.3 .1 0 .1 .01 3
execute as @e[tag=stonefall_deluge_vfx,scores={life=170..}] at @s run particle dust{color:[.5, .25, .1], scale:1.5} ^ ^.4 ^6.3 .0 .4 0 .01 6
execute as @e[tag=stonefall_deluge_vfx,scores={life=170..}] at @s run particle dust{color:[.5, .25, .1], scale:1.5} ^ ^.4 ^-6.3 .0 .4 0 .01 6
execute as @e[tag=stonefall_deluge_vfx,scores={life=1..}] at @s run tp @s ~ ~ ~ ~9 ~





execute as @e[tag=projectile,tag=stonefall_deluge] at @s run playsound block.stone.step ambient @a ~ ~ ~ 1 0
execute as @e[tag=projectile,tag=stonefall_deluge,scores={life=170}] at @s run playsound entity.goat.horn_break ambient @a ~ ~ ~ 1 0


##### Stones
execute as @e[tag=stonefall_deluge_vfx,scores={life=1..}] store result score @s random run random value 1..30
execute as @e[tag=stonefall_deluge_vfx,scores={life=170..}] store result score @s random run random value 1..11
execute as @e[tag=stonefall_deluge_vfx,scores={random=1..6}] at @s run tag @s add spawnProjectile
execute as @e[tag=stonefall_deluge_vfx,scores={random=1..6}] at @s run tag @s add blockDisplay
execute if entity @e[tag=stonefall_deluge_vfx,scores={random=1..6}] run function code:misc/spawn_projectile

execute as @e[tag=stonefall_deluge_vfx,scores={random=1..6}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add stonefall_deluge_stone

execute as @e[tag=stonefall_deluge_vfx,scores={random=1}] at @s run tp @e[tag=projectile,scores={life=0},sort=nearest,limit=1] ^ ^16 ^1
execute as @e[tag=stonefall_deluge_vfx,scores={random=2}] at @s run tp @e[tag=projectile,scores={life=0},sort=nearest,limit=1] ^ ^16 ^2
execute as @e[tag=stonefall_deluge_vfx,scores={random=3}] at @s run tp @e[tag=projectile,scores={life=0},sort=nearest,limit=1] ^ ^16 ^3
execute as @e[tag=stonefall_deluge_vfx,scores={random=4}] at @s run tp @e[tag=projectile,scores={life=0},sort=nearest,limit=1] ^ ^16 ^4
execute as @e[tag=stonefall_deluge_vfx,scores={random=5}] at @s run tp @e[tag=projectile,scores={life=0},sort=nearest,limit=1] ^ ^16 ^5
execute as @e[tag=stonefall_deluge_vfx,scores={random=6}] at @s run tp @e[tag=projectile,scores={life=0},sort=nearest,limit=1] ^ ^16 ^6




###### Death
kill @e[tag=stonefall_deluge,scores={life=230..}]
kill @e[tag=stonefall_deluge_vfx,scores={life=229..}]
