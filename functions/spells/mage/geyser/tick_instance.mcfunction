
execute as @e[tag=geyser_instance,scores={life=..14}] at @s run particle cloud ^ ^.2 ^ 1 0 1 .1 10

execute as @e[tag=geyser_instance] at @s run particle dust_color_transition{from_color:[.2, .6, 1.0], scale:2, to_color:[0.0, 0.0, 1.0]} ^ ^.2 ^3 .08 .08 .08 .01 4
execute as @e[tag=geyser_instance,scores={life=14..}] at @s run particle dust_color_transition{from_color:[.2, .6, 1.0], scale:2, to_color:[0.0, 0.0, 1.0]} ^ ^.2 ^-3 .08 .08 .08 .01 4
execute as @e[tag=geyser_instance] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=geyser_instance,scores={life=14..}] at @s run tp @s ~ ~.45 ~ ~5 ~

execute as @e[tag=geyser_instance,scores={life=14..}] at @s run particle dust_color_transition{from_color:[.2, 1.0, 1.0], scale:2, to_color:[.2, .5, 1.0]} ^3 ^.2 ^ .08 .08 .08 .01 4
execute as @e[tag=geyser_instance,scores={life=14..}] at @s run particle dust_color_transition{from_color:[.2, 1.0, 1.0], scale:2, to_color:[.2, .5, 1.0]} ^-3 ^.2 ^ .08 .08 .08 .01 4
execute as @e[tag=geyser_instance] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=geyser_instance,scores={life=14..}] at @s run tp @s ~ ~.45 ~ ~5 ~

execute as @e[tag=geyser_instance] at @s run particle dust_color_transition{from_color:[.2, .6, 1.0], scale:2, to_color:[0.0, 0.0, 1.0]} ^ ^.2 ^3 .08 .08 .08 .01 4
execute as @e[tag=geyser_instance] at @s run particle dust_color_transition{from_color:[.2, .6, 1.0], scale:2, to_color:[0.0, 0.0, 1.0]} ^ ^.2 ^-3 .08 .08 .08 .01 4
execute as @e[tag=geyser_instance] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=geyser_instance,scores={life=14..}] at @s run tp @s ~ ~.45 ~ ~5 ~

execute as @e[tag=geyser_instance,scores={life=14..}] at @s run particle dust_color_transition{from_color:[.2, 1.0, 1.0], scale:2, to_color:[.2, .5, 1.0]} ^3 ^.2 ^ .08 .08 .08 .01 4
execute as @e[tag=geyser_instance,scores={life=14..}] at @s run particle dust_color_transition{from_color:[.2, 1.0, 1.0], scale:2, to_color:[.2, .5, 1.0]} ^-3 ^.2 ^ .08 .08 .08 .01 4
execute as @e[tag=geyser_instance,scores={life=14..}] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=geyser_instance,scores={life=14..}] at @s run tp @s ~ ~.45 ~ ~5 ~


execute as @e[tag=geyser_instance,scores={life=..2}] at @s run playsound ambient.underwater.enter ambient @a ~ ~ ~ 1 0


###### Dmg & bump
execute as @e[tag=geyser_instance,scores={life=14}] at @s run scoreboard players add @e[tag=enemy,distance=..3.4] dmg 14
execute as @e[tag=geyser_instance,scores={life=14}] run function code:units/health/damage
execute as @e[tag=geyser_instance,scores={life=14..17}] at @s run playsound ambient.underwater.enter ambient @a ~ ~ ~ 1 2

execute as @e[tag=geyser_instance,scores={life=14..17}] at @s as @e[tag=enemy,distance=..3.5] at @s run particle dust_color_transition{from_color:[.2, 1.0, 1.0], scale:1, to_color:[.2, .5, 1.0]} ^ ^-1 ^ .04 .5 .04 .01 40
execute as @e[tag=geyser_instance,scores={life=14..17}] at @s as @e[tag=enemy,distance=..3.5] at @s run tp @s ~ ~1.45 ~



###### Going up
execute as @e[tag=geyser_instance,scores={life=14}] at @s run playsound weather.rain ambient @a ~ ~ ~ 2 2
execute as @e[tag=geyser_instance,scores={life=14}] at @s run playsound weather.rain ambient @a ~ ~ ~ 2 2
execute as @e[tag=geyser_instance,scores={life=14}] at @s run playsound block.fire.extinguish ambient @a ~ ~ ~ 1.5 0
execute as @e[tag=geyser_instance,scores={life=14}] at @s run playsound block.fire.extinguish ambient @a ~ ~ ~ 1.5 .5
execute as @e[tag=geyser_instance,scores={life=14..17}] at @s run playsound ambient.underwater.enter ambient @a ~ ~ ~ 1 0

execute as @e[tag=geyser_instance,scores={life=14..}] at @s run particle falling_water ~ ~ ~ 1.3 .5 1.3 .2 200
execute as @e[tag=geyser_instance,scores={life=14..}] at @s run particle cloud ~ ~ ~ 1.3 .5 1.3 0.1 6

kill @e[tag=geyser_instance,scores={life=20..}]
