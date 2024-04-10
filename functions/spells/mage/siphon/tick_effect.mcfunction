
execute as @e[tag=siphon_effect] at @s run particle dust_color_transition 1 1 1 1 .1 .1 1 ^-.6 ^.15 ^1 .12 .12 .12 .02 5
execute as @e[tag=siphon_effect] at @s run particle splash ^-.6 ^.05 ^.1 .12 .12 .12 .02 5
execute as @e[tag=siphon_effect] at @s run particle falling_water ^-.6 ^.5 ^.0 .12 .12 .12 .02 5


execute as @e[tag=siphon_effect] at @s facing entity @e[tag=projetile,tag=siphon,sort=nearest,limit=1] feet run tp @s ^-.3 ^.15 ^ ~ ~


execute as @e[tag=siphon_effect] at @s if entity @e[tag=projetile,tag=siphon,distance=..0.7] run kill @s
kill @e[tag=siphon_effect,scores={life=100..}]
