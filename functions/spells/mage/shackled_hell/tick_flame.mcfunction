
execute as @e[tag=projectile,tag=shackled_hell_effect,x_rotation=20..,scores={value=-1}] run scoreboard players set @s value 1
execute as @e[tag=projectile,tag=shackled_hell_effect,x_rotation=-20..,scores={value=1}] run scoreboard players set @s value -1

execute as @e[tag=projectile,tag=shackled_hell_effect] at @s run particle dust .7 .3 0 1.4 ^ ^ ^3 .05 .05 .05 .02 2
execute as @e[tag=projectile,tag=shackled_hell_effect] at @s run tp @s ~ ~ ~ ~9 ~
execute as @e[tag=projectile,tag=shackled_hell_effect,scores={value=-1}] at @s run tp @s ~ ~ ~ ~ ~-2
execute as @e[tag=projectile,tag=shackled_hell_effect,scores={value=1}] at @s run tp @s ~ ~ ~ ~ ~2

execute as @e[tag=projectile,tag=shackled_hell,tag=flame] at @s run particle flame ^ ^2 ^ 1.4 1.4 1.4 .02 40


##### Dmg
execute as @e[tag=projectile,tag=shackled_hell] at @s run scoreboard players add @e[tag=enemy,distance=..3.5,sort=nearest,limit=1] dmg 5
execute if entity @e[tag=projectile,tag=shackled_hell] run function code:units/health/damage



