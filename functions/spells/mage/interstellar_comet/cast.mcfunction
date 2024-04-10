
tag @a[tag=interstellar_comet,scores={lc=1..}] add channeling


tag @a[tag=interstellar_comet,scores={lc=1..}] add spawnProjectile
tag @a[tag=interstellar_comet,scores={lc=1..}] add blockDisplay
function code:misc/player_spawn_projectile
execute as @a[tag=interstellar_comet,scores={lc=1..}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add interstellar_comet
execute as @a[tag=interstellar_comet,scores={lc=1..}] at @s run execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0},sort=nearest,limit=1] run data merge entity @s {block_state:{Name:"minecraft:blackstone"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[.44f,0f,0f,1f],translation:[-.65f,-3.5f,-.65f],scale:[1.3f,1.3f,1.3f]}}


tag @a[tag=interstellar_comet,scores={lc=1..}] add spawnProjectile
tag @a[tag=interstellar_comet,scores={lc=1..}] add blockDisplay
function code:misc/player_spawn_projectile
execute as @a[tag=interstellar_comet,scores={lc=1..}] at @s run execute as @e[tag=projectile,tag=!interstellar_comet,tag=!interstellar_comet_shell,scores={life=0},sort=nearest,limit=1] run data merge entity @s {block_state:{Name:"minecraft:purple_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[.44f,0f,0f,1f],translation:[-.7f,-3.45f,-.7f],scale:[1.4f,1.4f,1.4f]}}
execute as @a[tag=interstellar_comet,scores={lc=1..}] at @s run tag @e[tag=projectile,tag=!interstellar_comet,tag=!interstellar_comet_shell,scores={life=0},sort=nearest,limit=1] add interstellar_comet_shell


execute as @e[tag=projectile,tag=interstellar_comet,scores={life=0}] at @s run tp @s ~ ~ ~ ~ 0
execute as @e[tag=projectile,tag=interstellar_comet_shell,scores={life=0}] at @s run tp @s ~ ~ ~ ~ 0

scoreboard players set @e[tag=projectile,tag=interstellar_comet,scores={life=0}] life -75
scoreboard players set @e[tag=projectile,tag=interstellar_comet_shell,scores={life=0}] life -75


####### SFX
execute as @a[tag=interstellar_comet,scores={lc=1..}] at @s run playsound entity.warden.emerge ambient @a ~ ~ ~ 1 1.7
execute as @a[tag=interstellar_comet,scores={lc=1..}] at @s run playsound entity.warden.sonic_charge ambient @a ~ ~ ~ 1 .6
