
##### Hit (enemy or wall)
execute as @e[tag=projectile,tag=enchanted_path] at @s positioned ^ ^ ^1 unless block ~ ~ ~ air run kill @s
execute as @e[tag=projectile,tag=enchanted_path,scores={life=1}] at @s run tp @s ^ ^ ^-3
execute as @e[tag=projectile,tag=enchanted_path,tag=warden,scores={life=1}] at @s run tp @s ^ ^ ^-3
execute as @e[tag=projectile,tag=enchanted_path] at @s run tp @s ^ ^ ^1.2



# Petals
execute as @e[tag=projectile,tag=enchanted_path,tag=petals] at @s run playsound block.wool.step ambient @a ~ ~ ~ .4 .8

execute as @e[tag=projectile,tag=enchanted_path,tag=petals] at @s run particle dust_color_transition 1 .8 .9 2 1 1 1 ^ ^.1 ^3 .2 .2 .2 0 6
execute as @e[tag=projectile,tag=enchanted_path,tag=petals] at @s run particle dust_color_transition 1 .8 .9 2 1 1 1 ^-.45 ^.1 ^3 .2 .2 .2 0 6
execute as @e[tag=projectile,tag=enchanted_path,tag=petals] at @s run particle dust_color_transition 1 .8 .9 2 1 1 1 ^.45 ^.1 ^3 .2 .2 .2 0 6
execute as @e[tag=projectile,tag=enchanted_path,tag=petals] at @s run particle dust_color_transition 1 .8 .9 2 1 1 1 ^-.9 ^.1 ^3 .2 .2 .2 0 6
execute as @e[tag=projectile,tag=enchanted_path,tag=petals] at @s run particle dust_color_transition 1 .8 .9 2 1 1 1 ^.9 ^.1 ^3 .2 .2 .2 0 6
execute as @e[tag=projectile,tag=enchanted_path,tag=petals] at @s run particle dust_color_transition 1 .8 .9 2 1 1 1 ^-1.35 ^.1 ^3 .2 .2 .2 0 6
execute as @e[tag=projectile,tag=enchanted_path,tag=petals] at @s run particle dust_color_transition 1 .8 .9 2 1 1 1 ^1.35 ^.1 ^3 .2 .2 .2 0 6
execute as @e[tag=projectile,tag=enchanted_path,tag=petals] at @s run particle dust_color_transition 1 .8 .9 2 1 1 1 ^-1.8 ^.1 ^3 .2 .2 .2 0 6
execute as @e[tag=projectile,tag=enchanted_path,tag=petals] at @s run particle dust_color_transition 1 .8 .9 2 1 1 1 ^1.8 ^.1 ^3 .2 .2 .2 0 6
execute as @e[tag=projectile,tag=enchanted_path,tag=petals] at @s run summon area_effect_cloud ~ ~.05 ~ {Tags:["enchanted_path"],Particle:"cherry_leaves",Radius:2,Duration:130,effects:[{id:regeneration,duration:40,show_particles:0b,show_icon:0b}]}

# Star
execute as @e[tag=projectile,tag=enchanted_path,tag=star] at @s run playsound block.amethyst_block.resonate ambient @a ~ ~ ~ 1 0

execute as @e[tag=projectile,tag=enchanted_path,tag=star] at @s run particle end_rod ^ ^.1 ^3 .2 .2 .2 0 6
execute as @e[tag=projectile,tag=enchanted_path,tag=star] at @s run particle end_rod ^-.45 ^.1 ^3 .2 .2 .2 0 6
execute as @e[tag=projectile,tag=enchanted_path,tag=star] at @s run particle end_rod ^.45 ^.1 ^3 .2 .2 .2 0 6
execute as @e[tag=projectile,tag=enchanted_path,tag=star] at @s run particle end_rod ^-.9 ^.1 ^3 .2 .2 .2 0 6
execute as @e[tag=projectile,tag=enchanted_path,tag=star] at @s run particle end_rod ^.9 ^.1 ^3 .2 .2 .2 0 6
execute as @e[tag=projectile,tag=enchanted_path,tag=star] at @s run particle end_rod ^-1.35 ^.1 ^3 .2 .2 .2 0 6
execute as @e[tag=projectile,tag=enchanted_path,tag=star] at @s run particle end_rod ^1.35 ^.1 ^3 .2 .2 .2 0 6
execute as @e[tag=projectile,tag=enchanted_path,tag=star] at @s run particle end_rod ^-1.8 ^.1 ^3 .2 .2 .2 0 6
execute as @e[tag=projectile,tag=enchanted_path,tag=star] at @s run particle end_rod ^1.8 ^.1 ^3 .2 .2 .2 0 6
execute as @e[tag=projectile,tag=enchanted_path,tag=star] at @s run summon area_effect_cloud ~ ~.05 ~ {Tags:["enchanted_path"],Particle:"instant_effect",Radius:2,Duration:130,effects:[{id:regeneration,duration:5,show_particles:0b,show_icon:0b}]}

# Warden
execute as @e[tag=projectile,tag=enchanted_path,tag=warden] at @s run playsound block.sculk_sensor.clicking ambient @a ~ ~ ~ 1 1

execute as @e[tag=projectile,tag=enchanted_path,tag=warden] at @s run particle sonic_boom ^ ^.2 ^4 0 0 0 0 1
execute as @e[tag=projectile,tag=enchanted_path,tag=warden,scores={life=6..}] at @s run summon area_effect_cloud ^ ^.05 ^-1 {Tags:["enchanted_path"],Particle:"dust_color_transition 0 .6 .6 1.1 0 0 0",Radius:2,Duration:130,effects:[{id:regeneration,duration:5,show_particles:0b,show_icon:0b}]}



###### Death
kill @e[tag=projectile,tag=enchanted_path,tag=!warden,scores={life=17..}]
kill @e[tag=projectile,tag=enchanted_path,tag=warden,scores={life=21..}]
