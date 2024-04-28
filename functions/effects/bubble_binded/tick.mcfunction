
####################### SFX ########################
scoreboard players remove @e[scores={bubble_binded=1..}] bubble_binded 1


execute as @e[tag=!bubble_bind_particled,scores={bubble_binded=2..}] at @s run summon marker ~ ~ ~ {Tags:["bubble_bind_particle"]}
effect give @e[tag=!bubble_bind_particled,scores={bubble_binded=2..}] slowness infinite 100 true
tag @e[tag=!bubble_bind_particled,scores={bubble_binded=2..}] add bubble_bind_particled



execute as @e[tag=bubble_bind_particle] at @s run tp @s ~ ~ ~ ~17 ~
execute as @e[tag=bubble_bind_particle] at @s run particle dust_color_transition{from_color:[0.0, .6, 1.0], scale:.8, to_color:[1.0, 1.0, 1.0]} ^ ^.7 ^.8 0 .3 0 0 5
execute as @e[tag=bubble_bind_particle] at @s run particle dust_color_transition{from_color:[0.0, .6, 1.0], scale:.8, to_color:[1.0, 1.0, 1.0]} ^ ^.7 ^-.8 0 .3 0 0 5
execute as @e[tag=bubble_bind_particle] at @s run particle dust_color_transition{from_color:[0.0, .6, 1.0], scale:.8, to_color:[1.0, 1.0, 1.0]} ^.8 ^.7 ^ 0 .3 0 0 5
execute as @e[tag=bubble_bind_particle] at @s run particle dust_color_transition{from_color:[0.0, .6, 1.0], scale:.8, to_color:[1.0, 1.0, 1.0]} ^-.8 ^.7 ^ 0 .3 0 0 5



####################### End ########################
execute as @e[tag=bubble_bind_particle] at @s unless entity @e[tag=enemy,distance=..0.4] run kill @s

execute as @e[scores={bubble_binded=1}] at @s run kill @e[tag=bubble_bind_particle,sort=nearest,limit=1]
effect clear @e[scores={bubble_binded=1}] slowness
tag @e[scores={bubble_binded=1}] remove bubble_bind_particled
