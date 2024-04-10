
##### Charging
execute as @e[tag=campfire_vfx] at @s run particle flame ^ ^.1 ^5 .03 .03 .03 .01 3
execute as @e[tag=campfire_vfx] at @s run particle flame ^ ^.1 ^-5 .03 .03 .03 .01 3
execute as @e[tag=campfire_vfx] at @s run particle flame ^5 ^.1 ^ .03 .03 .03 .01 3
execute as @e[tag=campfire_vfx] at @s run particle flame ^-5 ^.1 ^ .03 .03 .03 .01 3
execute as @e[tag=campfire_vfx] at @s run particle end_rod ^ ^.02 ^2 1.2 0 1.2 .01 1
execute as @e[tag=campfire_vfx] at @s run particle end_rod ^ ^.02 ^-2 1.2 0 1.2 .01 1
execute as @e[tag=campfire_vfx] at @s run tp @s ~ ~ ~ ~3.5 ~

execute as @e[tag=projectile,tag=campfire,scores={life=..140}] at @s run particle smoke ~ ~1.7 ~ .2 .5 .2 0 1


execute as @e[tag=projectile,tag=campfire,scores={life=..100}] at @s run playsound block.campfire.crackle ambient @a ~ ~ ~ .5 1



###### Death
execute at @e[tag=projectile,tag=campfire,scores={life=140..}] run kill @e[tag=campfire_vfx,sort=nearest,limit=1]
kill @e[tag=campfire,scores={life=140..}]
