
execute as @e[tag=projectile,tag=notch_lightning,tag=!placed] at @s run particle end_rod ~ ~ ~ 0 0 0 0 2
execute as @e[tag=projectile,tag=notch_lightning,tag=!placed] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=notch_lightning,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
