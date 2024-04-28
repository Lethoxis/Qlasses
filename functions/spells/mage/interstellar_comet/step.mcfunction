
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0..}] at @s positioned ~ ~-4.8 ~ run particle dust{color:[0.0, 0.0, 0.0], scale:4} ^ ^ ^-3 .8 0 .8 1 8 force
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0..}] at @s positioned ~ ~-3.5 ~ run particle dust_color_transition{from_color:[.6, 0.0, 1.0], scale:2, to_color:[1.0, .8, .3]} ~ ~ ~ .8 .8 .8 1 8 force
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0..}] at @s positioned ~ ~-3.5 ~ run particle dust_color_transition{from_color:[.8, .1, 1.0], scale:2, to_color:[1.0, 1.0, 1.0]} ~ ~ ~ .8 .8 .8 1 8 force
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0..}] at @s positioned ~ ~-3.5 ~ run particle block{block_state:"blackstone"} ~ ~ ~ .8 .8 .8 1 8 force
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0..}] at @s positioned ~ ~-3.5 ~ run particle instant_effect ~ ~ ~ .2 .2 .2 0 6 force
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0..}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0..}] at @s run tp @e[tag=interstellar_comet_shell,sort=nearest,limit=1] ~ ~ ~

execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0..}] at @s positioned ~ ~-4.8 ~ run particle dust{color:[0.0, 0.0, 0.0], scale:4} ^ ^ ^-3 .8 0 .8 1 8 force
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0..}] at @s positioned ~ ~-3.5 ~ run particle dust_color_transition{from_color:[.6, 0.0, 1.0], scale:2, to_color:[1.0, .8, .3]} ~ ~ ~ .8 .8 .8 1 8 force
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0..}] at @s positioned ~ ~-3.5 ~ run particle dust_color_transition{from_color:[.8, .1, 1.0], scale:2, to_color:[1.0, 1.0, 1.0]} ~ ~ ~ .8 .8 .8 1 8 force
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0..}] at @s positioned ~ ~-3.5 ~ run particle block{block_state:"blackstone"} ~ ~ ~ .8 .8 .8 1 8 force
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0..}] at @s positioned ~ ~-3.5 ~ run particle instant_effect ~ ~ ~ .2 .2 .2 0 6 force
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0..}] at @s run tp @s ^ ^ ^1
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0..}] at @s run tp @e[tag=interstellar_comet_shell,sort=nearest,limit=1] ~ ~ ~




##### Hit (enemy or wall)
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0..}] at @s positioned ~ ~-3.5 ~ run scoreboard players add @e[tag=enemy,distance=..3] dmg 100
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0..}] at @s positioned ~ ~-3.5 ~ if entity @e[tag=enemy,distance=..3] run playsound entity.zombie.attack_wooden_door ambient @a ~ ~ ~ 1.3 .7
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0..}] at @s positioned ~ ~-3.5 ~ positioned ^1 ^ ^ as @e[tag=enemy,distance=..2] rotated as @e[tag=projectile,tag=interstellar_comet,scores={life=0..},sort=nearest,limit=1] run tp @s ^1.7 ^ ^
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0..}] at @s positioned ~ ~-3.5 ~ positioned ^-1 ^ ^ as @e[tag=enemy,distance=..2] rotated as @e[tag=projectile,tag=interstellar_comet,scores={life=0..},sort=nearest,limit=1] run tp @s ^-1.7 ^ ^
execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0..}] at @s positioned ~ ~-3.5 ~ at @e[tag=enemy,distance=..2.5] run particle block{block_state:"blackstone"} ~ ~ ~ .8 .8 .8 1 80 force


