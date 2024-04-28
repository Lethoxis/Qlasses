
execute as @e[tag=siphon_effect] at @s run particle dust_color_transition{from_color:[1.0, 1.0, 1.0], scale:1, to_color:[.1, .1, 1.0]} ^ ^.05 ^ .06 .06 .06 .02 3
execute as @e[tag=siphon_effect] at @s run particle falling_water ^ ^.05 ^ .06 .06 .06 .02 5


execute as @e[tag=siphon_effect,scores={life=..4}] at @s facing entity @e[tag=projectile,tag=siphon,sort=nearest,limit=1] feet run tp @s ^.3 ^ ^
execute as @e[tag=siphon_effect,scores={life=5..}] at @s facing entity @e[tag=projectile,tag=siphon,sort=nearest,limit=1] feet run tp @s ^.3 ^ ^.18


execute as @e[tag=siphon_effect] at @s if entity @e[tag=projectile,tag=siphon,distance=..1.6] run kill @s
kill @e[tag=siphon_effect,scores={life=100..}]
