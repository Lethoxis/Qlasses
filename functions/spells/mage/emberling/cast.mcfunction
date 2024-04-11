
execute as @a[scores={cast=5}] at @s run summon bat ~ ~1.6 ~ {Tags:["hasLife","projectile","emberling"],HasVisualFire:1b}
execute as @a[scores={cast=5}] at @s run scoreboard players set @e[tag=projectile,tag=emberling,sort=nearest,limit=1] value 6


execute as @a[scores={cast=5}] at @s run playsound block.copper_bulb.break ambient @a ~ ~ ~ 1.5 2
execute as @a[scores={cast=5}] at @s run playsound block.sand.step ambient @a ~ ~ ~ 1.5 2
