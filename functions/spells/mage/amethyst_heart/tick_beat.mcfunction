
execute as @e[tag=amethyst_heart_beat] at @s if block ~ ~-.5 ~ air run scoreboard players set @s life 0

################## Fall down
execute as @e[tag=amethyst_heart_beat,scores={life=0}] at @s if block ~ ~-.5 ~ air run tp @s ~ ~-.5 ~
execute as @e[tag=amethyst_heart_beat,scores={life=0}] at @s run particle end_rod ^ ^ ^ 0 0 0 0 1
execute as @e[tag=amethyst_heart_beat,scores={life=0}] at @s if block ~ ~-.5 ~ air run tp @s ~ ~-.5 ~
execute as @e[tag=amethyst_heart_beat,scores={life=0}] at @s run particle end_rod ^ ^ ^ 0 0 0 0 1


################## Effect
execute as @e[tag=amethyst_heart_beat,scores={life=1}] at @s run playsound item.trident.thunder ambient @a ~ ~ ~ .2 2
execute as @e[tag=amethyst_heart_beat,scores={life=1}] at @s run playsound item.axe.wax_off ambient @a ~ ~ ~ 1 1.5
execute as @e[tag=amethyst_heart_beat,scores={life=1}] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"end_rod",Radius:0f,RadiusPerTick:.7f,Duration:11}
execute as @e[tag=amethyst_heart_beat,scores={life=1}] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.663 0.000 0.831 1",Radius:0f,RadiusPerTick:.7f,Duration:11}



################## Death
kill @e[tag=projectile,tag=amethyst_heart_beat,scores={life=20..}]
