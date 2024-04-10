
execute as @e[tag=projectile,tag=geode_bomb] at @s run particle dust_color_transition 1 1 1 1 .1 .1 .1 ^ ^ ^ .1 .1 .1 .02 5
execute as @e[tag=projectile,tag=geode_bomb] at @s run particle item calcite ^ ^ ^ .1 .1 .1 .02 1

execute as @e[tag=projectile,tag=geode_bomb] at @s run tp @s ^ ^ ^.35
execute as @e[tag=projectile,tag=geode_bomb,x_rotation=-90..40,scores={life=..10}] at @s run tp @s ^ ^ ^.55
execute as @e[tag=projectile,tag=geode_bomb,x_rotation=40..90] at @s run tp @s ^ ^ ^.65
execute as @e[tag=projectile,tag=geode_bomb,x_rotation=40..90,scores={life=23..}] at @s run tp @s ^ ^ ^.3
execute as @e[tag=projectile,tag=geode_bomb,x_rotation=-90..-70] at @s run tp @s ~ ~ ~ ~ ~2
execute as @e[tag=projectile,tag=geode_bomb,x_rotation=-70..-50] at @s run tp @s ~ ~ ~ ~ ~3
execute as @e[tag=projectile,tag=geode_bomb,x_rotation=-50..50] at @s run tp @s ~ ~ ~ ~ ~10
execute as @e[tag=projectile,tag=geode_bomb,x_rotation=50..70] at @s run tp @s ~ ~ ~ ~ ~3
execute as @e[tag=projectile,tag=geode_bomb,x_rotation=70..80] at @s run tp @s ~ ~ ~ ~ ~2


###### Max time
tag @e[tag=projectile,tag=geode_bomb,scores={life=40..}] add hit



##### Hit (enemy or wall)
execute as @e[tag=projectile,tag=geode_bomb] at @s unless block ~ ~ ~ air run tag @s add hit
execute as @e[tag=projectile,tag=geode_bomb] at @s positioned ~ ~-.5 ~ unless block ~ ~ ~ air run tag @s add hit


execute if entity @e[tag=projectile,tag=geode_bomb,tag=hit] run function code:spells/mage/geode_bomb/explode


kill @e[tag=projectile,tag=geode_bomb,tag=hit]
