
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



execute as @e[tag=projectile,tag=blaze_rampart] at @s as @e[tag=enemy,tag=!blaze_rampart_burning,distance=..2] at @s run summon marker ~ ~ ~ {Tags:["fire","effect","passenger","hasLife","blaze_rampart_effect"]}
scoreboard players set @e[tag=blaze_rampart_effect] life -30
scoreboard players set @e[tag=blaze_rampart_effect] effDmg 4

execute as @e[tag=projectile,tag=blaze_rampart] at @s as @e[tag=enemy,tag=!blaze_rampart_burning,distance=..2] at @s run ride @e[tag=blaze_rampart_effect,sort=nearest,limit=1] mount @s
execute as @e[tag=projectile,tag=blaze_rampart] at @s run tag @e[tag=enemy,tag=!blaze_rampart_burning,distance=..2] add blaze_rampart_burning
tag @e[tag=blaze_rampart_effect] remove blaze_rampart_effect


###### Death
kill @e[tag=projectile,tag=blaze_rampart,scores={life=140..}]
