

execute as @e[tag=projectile,tag=interstellar_comet,scores={life=..-1}] at @s run tp @e[tag=interstellar_comet_shell,sort=nearest,limit=1] ~ ~ ~



execute as @e[tag=projectile,tag=interstellar_comet,scores={life=-65..-15}] at @s run tp @s ~ ~.07 ~

execute as @e[tag=projectile,tag=interstellar_comet,scores={life=-65..-15}] at @s run particle dust_color_transition{from_color:[.8, 0.0, .8], scale:2, to_color:[.4, 0.0, .4]} ~ ~-3.5 ~ 1 1 1 .2 20
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=-65..-15}] at @s run particle block{block_state:"blackstone"} ~ ~-3.5 ~ 1 1 1 .2 20



############# End of channel
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=-1}] at @s run playsound entity.warden.sonic_boom ambient @a ~ ~ ~ 2 0

execute as @e[tag=projectile,tag=interstellar_comet,scores={life=-1}] at @s run particle item{item:"purple_wool"} ~ ~-3.5 ~ 1 1 1 .7 300

execute as @e[tag=projectile,tag=interstellar_comet,scores={life=-1}] at @s run tp @s ~ ~ ~ ~ 0
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=-1}] at @s run tag @s add going
