

##### Place
execute as @e[tag=himalaya_instance,tag=!himalaya_spike,scores={life=0}] store result score @s random run random value 0..4

execute as @e[tag=himalaya_instance,tag=!himalaya_spike,scores={life=0,random=1}] at @s run tp @s ^.3 ^ ^-.2
execute as @e[tag=himalaya_instance,tag=!himalaya_spike,scores={life=0,random=2}] at @s run tp @s ^-.3 ^ ^.2
execute as @e[tag=himalaya_instance,tag=!himalaya_spike,scores={life=0,random=3}] at @s run tp @s ^.5 ^ ^
execute as @e[tag=himalaya_instance,tag=!himalaya_spike,scores={life=0,random=4}] at @s run tp @s ^-.5 ^ ^


execute as @e[tag=himalaya_instance,tag=!himalaya_spike,scores={life=0}] at @s as @e[tag=himalaya_spike,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~



##### Dmg
execute as @e[tag=himalaya_instance,tag=!himalaya_spike,scores={life=1}] at @s positioned ~ ~.5 ~ run scoreboard players add @e[tag=enemy,distance=..3] dmg 20
execute if entity @e[tag=himalaya_instance,tag=!himalaya_spike,scores={life=1}] run function code:units/health/damage


##### Up
execute as @e[tag=projectile,tag=himalaya_instance,scores={life=..2}] at @s run playsound block.dripstone_block.place ambient @a ~ ~ ~ 1 .7
execute as @e[tag=projectile,tag=himalaya_instance,scores={life=..2}] at @s run playsound block.amethyst_block.chime ambient @a ~ ~ ~ 1
execute as @e[tag=projectile,tag=himalaya_instance,scores={life=..5}] at @s run particle block pointed_dripstone ~ ~ ~ .4 1 .4 .01 20
execute as @e[tag=projectile,tag=himalaya_instance,scores={life=..5}] at @s run tp @s ~ ~.5 ~

execute as @e[tag=projectile,tag=himalaya_instance,scores={life=5}] at @s run fill ^ ^-3 ^-1 ^ ^2 ^-1 barrier keep
execute as @e[tag=projectile,tag=himalaya_instance,scores={life=5}] at @s run fill ^ ^-3 ^ ^ ^2 ^ barrier keep
execute as @e[tag=projectile,tag=himalaya_instance,scores={life=5}] at @s run fill ^ ^-3 ^1 ^ ^2 ^1 barrier keep


execute as @e[tag=himalaya_instance,scores={life=..5}] at @s positioned ^1 ^.3 ^ as @e[tag=enemy,distance=..1.6] at @s rotated as @e[tag=himalaya_instance,sort=nearest,limit=1] run tp @s ^.6 ^.4 ^
execute as @e[tag=himalaya_instance,scores={life=..5}] at @s positioned ^-1 ^.3 ^ as @e[tag=enemy,distance=..1.6] at @s rotated as @e[tag=himalaya_instance,sort=nearest,limit=1] run tp @s ^-.6 ^.4 ^



execute as @e[tag=projectile,tag=himalaya_instance,tag=!himalaya_spike,scores={life=5..}] at @s run particle dust_color_transition .1 .5 1 1 1 1 1 ~ ~ ~ .5 1.5 .5 0 3


##### Down
execute as @e[tag=projectile,tag=himalaya_instance,scores={life=200..}] at @s run fill ^ ^-3 ^-1 ^ ^2 ^-1 air replace barrier
execute as @e[tag=projectile,tag=himalaya_instance,scores={life=200..}] at @s run fill ^ ^-3 ^ ^ ^2 ^ air replace barrier
execute as @e[tag=projectile,tag=himalaya_instance,scores={life=200..}] at @s run fill ^ ^-3 ^1 ^ ^2 ^1 air replace barrier
execute as @e[tag=projectile,tag=himalaya_instance,scores={life=200..}] at @s run playsound block.dripstone_block.break ambient @a ~ ~ ~ .8 0
execute as @e[tag=projectile,tag=himalaya_instance,scores={life=200..}] at @s run particle block pointed_dripstone ~ ~-1 ~ .6 1.2 .6 .01 40
kill @e[tag=projectile,tag=himalaya_instance,scores={life=200..}]
