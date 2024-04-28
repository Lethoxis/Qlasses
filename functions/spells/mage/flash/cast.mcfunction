

execute at @a[scores={cast=302}] run playsound item.trident.thunder ambient @a ~ ~ ~ 1 2
execute at @a[scores={cast=302}] run particle flash ~ ~.7 ~ .2 .3 .2 0 5
execute at @a[scores={cast=302}] run particle instant_effect ~ ~.7 ~ .4 .5 .4 0 100
execute at @a[scores={cast=302}] run particle instant_effect ~ ~.7 ~ .4 .5 .4 .2 100



tag @a[scores={cast=302}] add spawnProjectile
function code:misc/player_spawn_projectile
execute as @a[scores={cast=302}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add flash


# Place on ground
execute as @e[tag=flash,tag=!placed] at @s run tp @s ^ ^ ^.8
execute as @e[tag=flash,tag=!placed] at @s run particle dust_color_transition{from_color:[1.0, 1.0, .2], scale:1, to_color:[1.0, 1.0, 1.0]} ~ ~.3 ~ .08 .08 .08 0 10
execute as @e[tag=flash,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=flash,tag=!placed] at @s run tp @s ^ ^ ^.8
execute as @e[tag=flash,tag=!placed] at @s run particle dust_color_transition{from_color:[1.0, 1.0, .2], scale:1, to_color:[1.0, 1.0, 1.0]} ~ ~.3 ~ .08 .08 .08 0 10
execute as @e[tag=flash,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=flash,tag=!placed] at @s run tp @s ^ ^ ^.8
execute as @e[tag=flash,tag=!placed] at @s run particle dust_color_transition{from_color:[1.0, 1.0, .2], scale:1, to_color:[1.0, 1.0, 1.0]} ~ ~.3 ~ .08 .08 .08 0 10
execute as @e[tag=flash,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=flash,tag=!placed] at @s run tp @s ^ ^ ^.8
execute as @e[tag=flash,tag=!placed] at @s run particle dust_color_transition{from_color:[1.0, 1.0, .2], scale:1, to_color:[1.0, 1.0, 1.0]} ~ ~.3 ~ .08 .08 .08 0 10
execute as @e[tag=flash,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=flash,tag=!placed] at @s run tp @s ^ ^ ^.8
execute as @e[tag=flash,tag=!placed] at @s run particle dust_color_transition{from_color:[1.0, 1.0, .2], scale:1, to_color:[1.0, 1.0, 1.0]} ~ ~.3 ~ .08 .08 .08 0 10
execute as @e[tag=flash,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=flash,tag=!placed] at @s run tp @s ^ ^ ^.8
execute as @e[tag=flash,tag=!placed] at @s run particle dust_color_transition{from_color:[1.0, 1.0, .2], scale:1, to_color:[1.0, 1.0, 1.0]} ~ ~.3 ~ .08 .08 .08 0 10
execute as @e[tag=flash,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=flash,tag=!placed] at @s run tp @s ^ ^ ^.8
execute as @e[tag=flash,tag=!placed] at @s run particle dust_color_transition{from_color:[1.0, 1.0, .2], scale:1, to_color:[1.0, 1.0, 1.0]} ~ ~.3 ~ .08 .08 .08 0 10
execute as @e[tag=flash,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=flash,tag=!placed] at @s run tp @s ^ ^ ^.8
execute as @e[tag=flash,tag=!placed] at @s run particle dust_color_transition{from_color:[1.0, 1.0, .2], scale:1, to_color:[1.0, 1.0, 1.0]} ~ ~.3 ~ .08 .08 .08 0 10
execute as @e[tag=flash,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=flash,tag=!placed] at @s run tp @s ^ ^ ^.8
execute as @e[tag=flash,tag=!placed] at @s run particle dust_color_transition{from_color:[1.0, 1.0, .2], scale:1, to_color:[1.0, 1.0, 1.0]} ~ ~.3 ~ .08 .08 .08 0 10
execute as @e[tag=flash,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=flash,tag=!placed] at @s run tp @s ^ ^ ^.8
execute as @e[tag=flash,tag=!placed] at @s run particle dust_color_transition{from_color:[1.0, 1.0, .2], scale:1, to_color:[1.0, 1.0, 1.0]} ~ ~.3 ~ .08 .08 .08 0 10
execute as @e[tag=flash,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=flash,tag=!placed] at @s run tp @s ^ ^ ^.8
execute as @e[tag=flash,tag=!placed] at @s run particle dust_color_transition{from_color:[1.0, 1.0, .2], scale:1, to_color:[1.0, 1.0, 1.0]} ~ ~.3 ~ .08 .08 .08 0 10
execute as @e[tag=flash,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=flash,tag=!placed] at @s run tp @s ^ ^ ^.8
execute as @e[tag=flash,tag=!placed] at @s run particle dust_color_transition{from_color:[1.0, 1.0, .2], scale:1, to_color:[1.0, 1.0, 1.0]} ~ ~.3 ~ .08 .08 .08 0 10
execute as @e[tag=flash,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=flash,tag=!placed] at @s run tp @s ^ ^ ^.8
execute as @e[tag=flash,tag=!placed] at @s run particle dust_color_transition{from_color:[1.0, 1.0, .2], scale:1, to_color:[1.0, 1.0, 1.0]} ~ ~.3 ~ .08 .08 .08 0 10
execute as @e[tag=flash,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=flash,tag=!placed] at @s run tp @s ^ ^ ^.8
execute as @e[tag=flash,tag=!placed] at @s run particle dust_color_transition{from_color:[1.0, 1.0, .2], scale:1, to_color:[1.0, 1.0, 1.0]} ~ ~.3 ~ .08 .08 .08 0 10
execute as @e[tag=flash,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=flash,tag=!placed] at @s run tp @s ^ ^ ^.8
execute as @e[tag=flash,tag=!placed] at @s run particle dust_color_transition{from_color:[1.0, 1.0, .2], scale:1, to_color:[1.0, 1.0, 1.0]} ~ ~.3 ~ .08 .08 .08 0 10
execute as @e[tag=flash,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed
execute as @e[tag=flash,tag=!placed] at @s run tp @s ^ ^ ^.8
execute as @e[tag=flash,tag=!placed] at @s run particle dust_color_transition{from_color:[1.0, 1.0, .2], scale:1, to_color:[1.0, 1.0, 1.0]} ~ ~.3 ~ .08 .08 .08 0 10
execute as @e[tag=flash,tag=!placed] at @s unless block ~ ~ ~ air run tag @s add placed

execute as @e[tag=flash,tag=placed] at @s run tp @s ^ ^ ^-.5

execute as @e[tag=flash] at @s align y run tp @s ~ ~ ~ 0 0
execute as @e[tag=flash] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @e[tag=flash] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~


execute as @a[scores={cast=302}] at @s at @e[tag=flash,sort=nearest,limit=1] run tp @s ~ ~ ~
execute at @a[scores={cast=302}] run playsound item.trident.thunder ambient @a ~ ~ ~ 1 2


kill @e[tag=flash]
