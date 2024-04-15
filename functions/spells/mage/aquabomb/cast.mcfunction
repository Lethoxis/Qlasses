
tag @a[scores={cast=206}] add aquabombing
scoreboard players set @a[scores={cast=206}] aquabomb 60
effect give @a[scores={cast=206}] jump_boost 3 11 true
scoreboard players set @a[scores={cast=206}] jump 0

execute as @a[scores={cast=206}] at @s run playsound item.bucket.empty_axolotl ambient @a ~ ~ ~ 2 .8
execute as @a[scores={cast=206}] at @s run playsound entity.generic.drink ambient @a ~ ~ ~ .6 1
