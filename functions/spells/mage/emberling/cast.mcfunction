
execute as @a[scores={cast=5}] at @s run summon bat ~ ~.2 ~ {Tags:["hasLife","projectile","emberling"],Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:1000,show_particles:0b,show_icon:0b,ambient:0b}]}
execute as @a[scores={cast=5}] at @s run scoreboard players set @e[tag=projectile,tag=emberling,sort=nearest,limit=1] value 6


execute as @a[scores={cast=5}] at @s run playsound entity.allay.ambient_without_item ambient @a ~ ~ ~ 1 1.8
execute as @a[scores={cast=5}] at @s run playsound entity.allay.ambient_without_item ambient @a ~ ~ ~ 1 1.4
