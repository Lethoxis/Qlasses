
execute as @e[tag=projectile,tag=bubble_bind] at @s run particle dust_color_transition{from_color:[.2, .8, 1.0], scale:1, to_color:[1.0, 1.0, 1.0]} ^ ^ ^ 1 1 1 .02 6
execute as @e[tag=projectile,tag=bubble_bind] at @s run particle bubble_pop ^ ^ ^ 1 1 1 .02 60
execute as @e[tag=projectile,tag=bubble_bind] at @s run playsound block.bubble_column.upwards_ambient ambient @a ~ ~ ~ .5 1

execute as @e[tag=projectile,tag=bubble_bind] at @s run tp @s ^ ^ ^.1 ~ ~
execute as @e[tag=projectile,tag=bubble_bind,x_rotation=-90..40,scores={life=..10}] at @s run tp @s ^ ^ ^.6
execute as @e[tag=projectile,tag=bubble_bind,x_rotation=-90..40,scores={life=11..18}] at @s run tp @s ^ ^ ^.4
execute as @e[tag=projectile,tag=bubble_bind,x_rotation=-90..40,scores={life=19..}] at @s run tp @s ^ ^ ^.3
execute as @e[tag=projectile,tag=bubble_bind,x_rotation=40..90] at @s run tp @s ^ ^ ^.2
execute as @e[tag=projectile,tag=bubble_bind,x_rotation=-90..-70] at @s run tp @s ~ ~ ~ ~ ~1.5
execute as @e[tag=projectile,tag=bubble_bind,x_rotation=-70..-50] at @s run tp @s ~ ~ ~ ~ ~2
execute as @e[tag=projectile,tag=bubble_bind,x_rotation=-50..50] at @s run tp @s ~ ~ ~ ~ ~4
execute as @e[tag=projectile,tag=bubble_bind,x_rotation=50..70] at @s run tp @s ~ ~ ~ ~ ~2.5
execute as @e[tag=projectile,tag=bubble_bind,x_rotation=70..90] at @s run tp @s ~ ~ ~ ~ ~1.5


###### Max time
tag @e[tag=projectile,tag=bubble_bind,scores={life=90..}] add hit



##### Hit (enemy or wall)
execute as @e[tag=projectile,tag=bubble_bind] at @s unless block ~ ~ ~ air run tag @s add hit
execute as @e[tag=projectile,tag=bubble_bind] at @s positioned ~ ~-.5 ~ unless block ~ ~ ~ air run tag @s add hit


execute if entity @e[tag=projectile,tag=bubble_bind,tag=hit] run function code:spells/mage/bubble_bind/explode


kill @e[tag=projectile,tag=bubble_bind,tag=hit]
