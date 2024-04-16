
execute as @e[tag=projectile,tag=hellfire_shackles_effect,x_rotation=30..90,scores={value=-1}] run scoreboard players set @s value 1
execute as @e[tag=projectile,tag=hellfire_shackles_effect,x_rotation=-90..-30,scores={value=1}] run scoreboard players set @s value -1

execute as @e[tag=projectile,tag=hellfire_shackles_effect] at @s run particle dust_color_transition 1 .4 0 1.8 1 1 0 ^ ^ ^4 .05 .05 .05 .02 2
execute as @e[tag=projectile,tag=hellfire_shackles_effect] at @s run particle dust_color_transition 1 1 0 1.8 1 0 0 ^ ^ ^-4 .05 .05 .05 .02 2
execute as @e[tag=projectile,tag=hellfire_shackles_effect] at @s run tp @s ~ ~ ~ ~4.5 ~
execute as @e[tag=projectile,tag=hellfire_shackles_effect] at @s run particle dust_color_transition 1 .4 0 1.8 1 1 0 ^ ^ ^4 .05 .05 .05 .02 2
execute as @e[tag=projectile,tag=hellfire_shackles_effect] at @s run particle dust_color_transition 1 1 0 1.8 1 0 0 ^ ^ ^-4 .05 .05 .05 .02 2
execute as @e[tag=projectile,tag=hellfire_shackles_effect] at @s run tp @s ~ ~ ~ ~4.5 ~


execute as @e[tag=projectile,tag=hellfire_shackles_effect,scores={value=-1}] at @s run tp @s ~ ~ ~ ~ ~3
execute as @e[tag=projectile,tag=hellfire_shackles_effect,scores={value=1}] at @s run tp @s ~ ~ ~ ~ ~-3


execute as @e[tag=projectile,tag=hellfire_shackles,tag=flame,scores={life=..2}] at @s run playsound block.fire.ambient ambient @a ~ ~ ~ 3 0
execute as @e[tag=projectile,tag=hellfire_shackles,tag=flame,scores={life=..2}] at @s run playsound block.fire.ambient ambient @a ~ ~ ~ 3 1




execute as @e[tag=projectile,tag=hellfire_shackles,tag=flame] at @s run tp @s ^ ^ ^ ~7 ~
execute as @e[tag=projectile,tag=hellfire_shackles,tag=flame] at @s run particle flame ^ ^ ^5 .5 .2 .5 .02 15
execute as @e[tag=projectile,tag=hellfire_shackles,tag=flame] at @s run tp @s ^ ^ ^ ~7 ~
execute as @e[tag=projectile,tag=hellfire_shackles,tag=flame] at @s run particle flame ^ ^ ^5 .5 .2 .5 .02 15
execute as @e[tag=projectile,tag=hellfire_shackles,tag=flame] at @s run tp @s ^ ^ ^ ~7 ~
execute as @e[tag=projectile,tag=hellfire_shackles,tag=flame] at @s run particle flame ^ ^ ^5 .5 .2 .5 .02 15


##### Dmg
execute as @e[tag=projectile,tag=hellfire_shackles,tag=flame] at @s run tag @e[tag=enemy,distance=..6,tag=!double_fire] add double_fire
execute as @e[tag=projectile,tag=hellfire_shackles,tag=flame] at @s run scoreboard players set @e[tag=enemy,distance=..6] fire 99999

execute as @e[tag=projectile,tag=hellfire_shackles,tag=flame,scores={life=..70}] at @s run effect give @e[tag=enemy,distance=..4] slowness 1 4 true
