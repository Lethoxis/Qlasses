

execute as @e[tag=projectile,tag=vesuvius_instance,scores={life=0}] run data merge entity @s {block_state:{Name:"minecraft:blackstone_wall"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.75f,-3.6f,-1.75f],scale:[3.5f,3.5f,3.5f]}}


##### Dmg
execute as @e[tag=vesuvius_instance,scores={life=1}] at @s positioned ~ ~.5 ~ run scoreboard players add @e[tag=enemy,distance=..2] dmg 5
execute if entity @e[tag=vesuvius_instance,scores={life=1}] run function code:units/health/damage


##### Up
execute as @e[tag=projectile,tag=vesuvius_instance,scores={life=..2}] at @s run playsound block.stone.place ambient @a ~ ~ ~ 1 .7
execute as @e[tag=projectile,tag=vesuvius_instance,scores={life=..5}] at @s run particle block{block_state:"blackstone"} ~ ~ ~ .4 1 .4 .01 20
execute as @e[tag=projectile,tag=vesuvius_instance,scores={life=..5}] at @s run tp @s ~ ~.5 ~

execute as @e[tag=projectile,tag=vesuvius_instance,scores={life=5}] at @s run fill ^.5 ^-3 ^ ^-.5 ^-1 ^ barrier keep


execute as @e[tag=vesuvius_instance,scores={life=..6}] at @s positioned ^ ^-.3 ^.5 as @e[tag=enemy,distance=..1.2] at @s rotated as @e[tag=vesuvius_instance,sort=nearest,limit=1] run tp @s ^ ^.4 ^.4
execute as @e[tag=vesuvius_instance,scores={life=..6}] at @s positioned ^ ^-.3 ^-1.2 as @e[tag=enemy,distance=..1.4] at @s rotated as @e[tag=vesuvius_instance,sort=nearest,limit=1] run tp @s ^ ^-.3 ^-.6


execute as @e[tag=projectile,tag=vesuvius_instance,scores={life=5..}] at @s run particle dust_color_transition{from_color:[1.0, 0.0, 0.0], scale:1, to_color:[1.0, 1.0, 0.0]} ^ ^-2 ^-.5 .5 1 .5 0 1


##### Down
execute as @e[tag=projectile,tag=vesuvius_instance,scores={life=130..}] at @s run fill ^.5 ^-3 ^ ^-.5 ^-1 ^ air replace barrier
execute as @e[tag=projectile,tag=vesuvius_instance,scores={life=130..}] at @s run playsound block.stone.break ambient @a ~ ~ ~ .8 0
execute as @e[tag=projectile,tag=vesuvius_instance,scores={life=130..}] at @s run particle block{block_state:"blackstone"} ~ ~-1 ~ .6 1.2 .6 .01 40
kill @e[tag=projectile,tag=vesuvius_instance,scores={life=130..}]
