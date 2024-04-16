
##### Charging
execute as @e[tag=projectile,tag=blaze_rampart,scores={life=1..2}] at @s run particle large_smoke ^0.5 ^1.5 ^ .4 1 .4 .01 5
execute as @e[tag=projectile,tag=blaze_rampart,scores={life=1..2}] at @s run particle large_smoke ^-.5 ^1.5 ^ .4 1 .4 .01 5


execute as @e[tag=projectile,tag=blaze_rampart] at @s run particle flame ^0.5 ^1.5 ^ .4 1 .4 .01 4
execute as @e[tag=projectile,tag=blaze_rampart] at @s run particle flame ^-.5 ^1.5 ^ .4 1 .4 .01 4
execute as @e[tag=projectile,tag=blaze_rampart] at @s run particle smoke ^ ^3.2 ^ .5 .6 .5 .01 1
execute as @e[tag=projectile,tag=blaze_rampart] at @s run particle dust_color_transition 1 .5 .2 1 1 1 .2 ^.5 ^.05 ^ .3 .1 .3 .01 3
execute as @e[tag=projectile,tag=blaze_rampart] at @s run particle dust_color_transition 1 .5 .2 1 1 1 .2 ^-.5 ^.05 ^ .3 .1 .3 .01 3

execute as @e[tag=projectile,tag=blaze_rampart,scores={life=..3}] at @s run playsound block.fire.ambient ambient @a ~ ~ ~ .5 1
execute as @e[tag=projectile,tag=blaze_rampart,scores={life=27..30}] at @s run playsound block.campfire.crackle ambient @a ~ ~ ~ .5 2
execute as @e[tag=projectile,tag=blaze_rampart,scores={life=60..64}] at @s run playsound block.campfire.crackle ambient @a ~ ~ ~ .5 1.8
execute as @e[tag=projectile,tag=blaze_rampart,scores={life=90..100}] at @s run playsound block.campfire.crackle ambient @a ~ ~ ~ .5 2



execute as @e[tag=projectile,tag=blaze_rampart] at @s run scoreboard players set @e[tag=enemy,tag=!blaze_rampart_burning,distance=..2,scores={fire=..200}] fire 200

###### Death
kill @e[tag=projectile,tag=blaze_rampart,scores={life=140..}]
