
##### Start
tag @e[tag=projectile,tag=fuji,scores={life=1}] add spawnProjectile
tag @e[tag=projectile,tag=fuji,scores={life=1}] add blockDisplay
function code:misc/spawn_projectile
execute as @e[tag=projectile,tag=fuji,scores={life=1}] at @s run tag @e[tag=projectile,tag=!fuji,scores={life=0},sort=nearest,limit=1] add fuji_peak

tag @e[tag=projectile,tag=fuji,scores={life=1}] add spawnProjectile
function code:misc/spawn_projectile
execute as @e[tag=projectile,tag=fuji,scores={life=1}] at @s run tag @e[tag=projectile,type=marker,scores={life=0},sort=nearest,limit=1] add fuji_vfx
execute as @e[tag=projectile,tag=fuji,scores={life=1}] at @s run ride @e[tag=projectile,tag=fuji_vfx,scores={life=0},sort=nearest,limit=1] mount @s

execute as @e[tag=projectile,tag=fuji,scores={life=1}] run data merge entity @s {block_state:{Name:"minecraft:smooth_basalt"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-.37f,-.88f,-.28f,.13f],translation:[-.015f,-23.35f,-.045f],scale:[9f,13f,9f]}}
execute as @e[tag=projectile,tag=fuji_peak,scores={life=1}] run data merge entity @s {block_state:{Name:"minecraft:snow_block"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-.37f,-.88f,-.28f,.13f],translation:[0f,-23f,0f],scale:[7.5f,13f,7.5f]}}



##### Up
execute as @e[tag=projectile,tag=fuji,scores={life=..40}] at @s run particle block{block_state:"smooth_basalt"} ~ ~-5 ~ 2 2.5 2 0 70

execute as @e[tag=projectile,tag=fuji,scores={life=..40}] at @s run playsound entity.warden.heartbeat ambient @a ~ ~ ~ 1 0
execute as @e[tag=projectile,tag=fuji,scores={life=..40}] at @s run tp @s ~ ~.2 ~
execute as @e[tag=projectile,tag=fuji_peak,scores={life=..39}] at @s run tp @s ~ ~.2 ~
execute as @e[tag=projectile,tag=fuji,scores={life=48}] run stopsound @a * entity.warden.emerge
execute as @e[tag=projectile,tag=fuji,scores={life=37}] at @s run playsound entity.warden.attack_impact ambient @a ~ ~ ~ 2 0
execute as @e[tag=projectile,tag=fuji,scores={life=34}] at @s run playsound entity.lightning_bolt.thunder ambient @a ~ ~ ~ 1.5 0
execute as @e[tag=projectile,tag=fuji,scores={life=39}] at @s run particle block{block_state:"smooth_basalt"} ~ ~-7.5 ~ 3.7 .6 3.7 0 600


execute as @e[tag=fuji] at @s positioned ^ ^-7.5 ^ as @e[type=!interaction,tag=!projectile,distance=..5] at @s facing entity @e[tag=fuji,sort=nearest,limit=1] feet positioned ~ ~.7 ~ run tp @s ^ ^ ^-.7
execute as @e[tag=fuji,scores={life=40}] at @s positioned ^ ^-7.9 ^ run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:smooth_basalt"},Radius:8,Duration:10}
execute as @e[tag=fuji,scores={life=40}] at @s positioned ^ ^-7.5 ^ run scoreboard players add @e[tag=enemy,distance=..8] dmg 40
execute as @e[tag=fuji,scores={life=40}] run function code:units/health/damage



#execute if entity @e[tag=fuji,scores={life=40}] run function code:spells/mage/fuji/block
#execute if entity @e[tag=fuji,scores={life=200}] run function code:spells/mage/fuji/unblock


##### Particles
execute as @e[tag=fuji_vfx,scores={life=38..180}] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=fuji_vfx,scores={life=38..180}] at @s run particle campfire_cosy_smoke ^ ^-1 ^4.6 .65 .1 .65 0 10
execute as @e[tag=fuji_vfx,scores={life=38..180}] at @s run particle campfire_cosy_smoke ^ ^-1 ^-4.6 .65 .1 .65 .007 10
execute as @e[tag=fuji_vfx,scores={life=38..180}] at @s run particle campfire_cosy_smoke ^4.6 ^-1 ^ .65 .1 .65 0 10
execute as @e[tag=fuji_vfx,scores={life=38..180}] at @s run particle campfire_cosy_smoke ^-4.6 ^-1 ^ .65 .1 .65 .007 10
execute as @e[tag=fuji_vfx,scores={life=38..180}] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=fuji_vfx,scores={life=38..180}] at @s run particle campfire_cosy_smoke ^ ^-1 ^4.6 .65 .1 .65 0 10
execute as @e[tag=fuji_vfx,scores={life=38..180}] at @s run particle campfire_cosy_smoke ^ ^-1 ^-4.6 .65 .1 .65 .007 10
execute as @e[tag=fuji_vfx,scores={life=38..180}] at @s run particle campfire_cosy_smoke ^4.6 ^-1 ^ .65 .1 .65 0 10
execute as @e[tag=fuji_vfx,scores={life=38..180}] at @s run particle campfire_cosy_smoke ^-4.6 ^-1 ^ .65 .1 .65 .007 10



###### Death
execute as @e[tag=projectile,tag=fuji,scores={life=200..}] at @s run particle block{block_state:"smooth_basalt"} ~ ~-6 ~ 3.5 2 3.5 0 500
execute as @e[tag=projectile,tag=fuji,scores={life=200..}] at @s run playsound entity.warden.heartbeat ambient @a ~ ~ ~ 2 0
execute as @e[tag=projectile,tag=fuji,scores={life=200..}] at @s run playsound entity.warden.heartbeat ambient @a ~ ~ ~ 2 0
execute as @e[tag=projectile,tag=fuji,scores={life=200..}] at @s run playsound block.stone.break ambient @a ~ ~ ~ 2 0
execute as @e[tag=projectile,tag=fuji,scores={life=200..}] at @s run playsound block.stone.break ambient @a ~ ~ ~ 2 0
execute as @e[tag=projectile,tag=fuji,scores={life=200..}] at @s run playsound block.stone.break ambient @a ~ ~ ~ 2 0
kill @e[tag=projectile,tag=fuji_vfx,scores={life=198..}]
kill @e[tag=projectile,tag=fuji_peak,scores={life=199..}]
kill @e[tag=projectile,tag=fuji,scores={life=200..}]
