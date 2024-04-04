
tag @a[tag=fireball,scores={lc=1..}] add spawnProjectile
tag @a[tag=fireball,scores={lc=1..}] add itemDisplay
function code:misc/player_spawn_projectile
execute as @a[tag=fireball,scores={lc=1..}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add fireball
execute as @a[tag=fireball,scores={lc=1..}] at @s run data merge entity @e[tag=projectile,scores={life=0},sort=nearest,limit=1] {item:{id:"minecraft:fire_charge",Count:1b},item_display:"ground"}

execute as @a[tag=fireball,scores={lc=1..}] at @s run playsound entity.blaze.shoot ambient @a ~ ~ ~ 1 1.4
