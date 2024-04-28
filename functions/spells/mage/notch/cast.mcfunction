
scoreboard players set @a[scores={cast=304}] notch 1
tag @a[scores={cast=304}] add channeling

execute as @a[scores={cast=304}] at @s run particle end_rod ~ ~1.5 ~ .7 .7 .7 .2 300

execute as @a[scores={cast=304}] at @s run playsound entity.warden.roar ambient @a ~ ~ ~ 1 1.8
execute as @a[scores={cast=304}] at @s run playsound entity.warden.angry ambient @a ~ ~ ~ 1 1.3
execute as @a[scores={cast=304}] at @s run playsound entity.guardian.death ambient @a ~ ~ ~ 1 1.5
execute as @a[scores={cast=304}] at @s run playsound entity.elder_guardian.curse ambient @a ~ ~ ~ 1 0
