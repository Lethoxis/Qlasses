
execute as @e[tag=projectile,tag=gemfire_beam] at @s run particle dust_color_transition{from_color:[.6, 0.0, 1.0], scale:2, to_color:[1.0, .8, .3]} ~ ~ ~ .2 .05 .2 1 4 force
execute as @e[tag=projectile,tag=gemfire_beam] at @s run particle dust_color_transition{from_color:[.8, .1, 1.0], scale:2, to_color:[1.0, 1.0, 1.0]} ~ ~ ~ .2 .05 .2 1 4 force
execute as @e[tag=projectile,tag=gemfire_beam] at @s run tp @s ^ ^ ^1

execute as @e[tag=projectile,tag=gemfire_beam] at @s run particle dust_color_transition{from_color:[.6, 0.0, 1.0], scale:2, to_color:[1.0, .8, .3]} ~ ~ ~ .2 .05 .2 1 4 force
execute as @e[tag=projectile,tag=gemfire_beam] at @s run particle dust_color_transition{from_color:[.8, .1, 1.0], scale:2, to_color:[1.0, 1.0, 1.0]} ~ ~ ~ .2 .05 .2 1 4 force
execute as @e[tag=projectile,tag=gemfire_beam] at @s run tp @s ^ ^ ^1




##### Hit (enemy or wall)
execute as @e[tag=projectile,tag=gemfire_beam] at @s unless block ^ ^ ^ air run kill @s
execute as @e[tag=projectile,tag=gemfire_beam] at @s unless block ^ ^ ^1 air run kill @s


execute as @e[tag=projectile,tag=gemfire_beam] at @s if entity @e[tag=enemy,distance=..1.3] run scoreboard players add @e[tag=enemy,distance=..1.3] dmg 25
execute as @e[tag=projectile,tag=gemfire_beam] at @s if entity @e[tag=enemy,distance=..1.3] run function code:units/health/damage
execute as @e[tag=projectile,tag=gemfire_beam] at @s if entity @e[tag=enemy,distance=..1.3] run playsound block.beacon.deactivate ambient @a ~ ~ ~ 1 2
execute as @e[tag=projectile,tag=gemfire_beam] at @s at @e[tag=enemy,distance=..1.3] run particle dust_color_transition{from_color:[.6, 0.0, 1.0], scale:1, to_color:[1.0, .8, .3]} ~ ~1.5 ~ .05 1.2 .05 1 50 force


