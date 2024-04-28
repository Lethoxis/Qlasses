
################ Repulse enemies

execute as @e[tag=projectile,tag=splashback_repulse] at @s run particle dust_color_transition{from_color:[1.0, 1.0, 1.0], scale:1, to_color:[.1, .1, 1.0]} ^ ^.25 ^1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse] at @s run particle splash ^ ^.2 ^.1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse] at @s run particle falling_water ^ ^.5 ^.0 .2 .2 .2 .02 10

execute as @e[tag=projectile,tag=splashback_repulse] at @s run particle dust_color_transition{from_color:[1.0, 1.0, 1.0], scale:1, to_color:[.1, .1, 1.0]} ^.6 ^.25 ^1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse] at @s run particle splash ^.6 ^.2 ^.1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse] at @s run particle falling_water ^.6 ^.5 ^.0 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse] at @s run particle dust_color_transition{from_color:[1.0, 1.0, 1.0], scale:1, to_color:[.1, .1, 1.0]} ^-.6 ^.25 ^1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse] at @s run particle splash ^-.6 ^.2 ^.1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse] at @s run particle falling_water ^-.6 ^.5 ^.0 .2 .2 .2 .02 10

execute as @e[tag=projectile,tag=splashback_repulse,scores={life=2..}] at @s run particle dust_color_transition{from_color:[1.0, 1.0, 1.0], scale:1, to_color:[.1, .1, 1.0]} ^1.2 ^.25 ^1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse,scores={life=2..}] at @s run particle splash ^1.2 ^.2 ^.1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse,scores={life=2..}] at @s run particle falling_water ^1.2 ^.5 ^.0 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse,scores={life=2..}] at @s run particle dust_color_transition{from_color:[1.0, 1.0, 1.0], scale:1, to_color:[.1, .1, 1.0]} ^-1.2 ^.25 ^1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse,scores={life=2..}] at @s run particle splash ^-1.2 ^.2 ^.1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse,scores={life=2..}] at @s run particle falling_water ^-1.2 ^.5 ^.0 .2 .2 .2 .02 10

execute as @e[tag=projectile,tag=splashback_repulse,scores={life=3..}] at @s run particle dust_color_transition{from_color:[1.0, 1.0, 1.0], scale:1, to_color:[.1, .1, 1.0]} ^1.8 ^.25 ^1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse,scores={life=3..}] at @s run particle splash ^1.8 ^.2 ^.1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse,scores={life=3..}] at @s run particle falling_water ^1.8 ^.5 ^.0 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse,scores={life=3..}] at @s run particle dust_color_transition{from_color:[1.0, 1.0, 1.0], scale:1, to_color:[.1, .1, 1.0]} ^-1.8 ^.25 ^1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse,scores={life=3..}] at @s run particle splash ^-1.8 ^.2 ^.1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse,scores={life=3..}] at @s run particle falling_water ^-1.8 ^.5 ^.0 .2 .2 .2 .02 10

execute as @e[tag=projectile,tag=splashback_repulse,scores={life=4..}] at @s run particle dust_color_transition{from_color:[1.0, 1.0, 1.0], scale:1, to_color:[.1, .1, 1.0]} ^2.2 ^.25 ^1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse,scores={life=4..}] at @s run particle splash ^2.2 ^.2 ^.1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse,scores={life=4..}] at @s run particle falling_water ^2.2 ^.5 ^.0 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse,scores={life=4..}] at @s run particle dust_color_transition{from_color:[1.0, 1.0, 1.0], scale:1, to_color:[.1, .1, 1.0]} ^-2.2 ^.25 ^1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse,scores={life=4..}] at @s run particle splash ^-2.2 ^.2 ^.1 .2 .2 .2 .02 10
execute as @e[tag=projectile,tag=splashback_repulse,scores={life=4..}] at @s run particle falling_water ^-2.2 ^.5 ^.0 .2 .2 .2 .02 10

execute as @e[tag=projectile,tag=splashback_repulse] at @s run tp @s ^ ^ ^1


### Hit (enemy or wall)
tag @e[tag=hitwall] add hit
execute as @e[tag=projectile,tag=splashback_repulse] at @s if entity @e[tag=enemy,distance=..1.3] run tag @s add hit


execute as @e[tag=projectile,tag=splashback_repulse,tag=hit] at @s run scoreboard players add @e[tag=enemy,distance=..3,sort=nearest] dmg 8
execute as @e[tag=projectile,tag=splashback_repulse,tag=hit] at @s as @e[tag=enemy,distance=..3,sort=nearest] at @s rotated as @e[tag=projectile,tag=splashback_repulse,tag=hit] run tp @s ^ ^.15 ^.9
execute as @e[tag=projectile,tag=splashback_repulse,tag=hit] at @s as @e[tag=enemy,distance=..3,sort=nearest] at @s run effect give @s slowness 3 0 true
execute if entity @e[tag=projectile,tag=splashback_repulse,tag=hit] run function code:units/health/damage

execute as @e[tag=projectile,tag=splashback_repulse,tag=hit,tag=!hitwall] at @s run particle splash ~ ~1 ~ .4 .6 .4 0 40
execute as @e[tag=projectile,tag=splashback_repulse,tag=hit,tag=!hitwall] at @s run playsound entity.generic.splash ambient @a ~ ~ ~ 1 1.3


tag @e[tag=projectile,tag=splashback_repulse,tag=hit] remove hit





kill @e[tag=projectile,tag=splashback_repulse,scores={life=5..}]



################ Repulse self
execute as @e[tag=projectile,tag=splashback] at @s positioned ^ ^ ^-.45 run tp @s ~ ~ ~ ~ ~-4
execute as @e[tag=projectile,tag=splashback] at @s run tp @p ~ ~ ~

execute as @e[tag=projectile,tag=splashback] at @s run particle dust_color_transition{from_color:[.5, .5, 1.0], scale:1.3, to_color:[1.0, 1.0, 1.0]} ~ ~.5 ~ .2 .2 .2 0 2
execute as @e[tag=projectile,tag=splashback] at @s run particle white_smoke ~ ~.5 ~ .2 .2 .2 0 2



###### Death
kill @e[tag=projectile,tag=splashback,scores={life=10..}]
