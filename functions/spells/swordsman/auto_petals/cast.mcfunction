
execute as @a[scores={cast=1900}] at @s run playsound entity.player.attack.sweep ambient @a ~ ~ ~ 1 1.5

execute as @a[scores={cast=1900}] at @s positioned ^ ^ ^2 run tag @e[tag=enemy,distance=..2,sort=nearest,limit=1] add autoTarget_petals


tag @a[scores={cast=1900}] add spawnProjectile
function code:misc/player_spawn_projectile
execute as @a[scores={cast=1900}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add auto_petals
execute if entity @e[tag=autoTarget_petals] as @a[scores={cast=1900}] at @s at @e[tag=autoTarget_petals,sort=nearest,limit=1] run tp @e[tag=projectile,scores={life=0},sort=nearest,limit=1] ~ ~.8 ~
execute unless entity @e[tag=autoTarget_petals] as @a[scores={cast=1900}] at @s positioned ~ ~1.3 ~ run tp @e[tag=projectile,scores={life=0},sort=nearest,limit=1] ^ ^ ^1.5



##### VSFX
execute at @e[tag=auto_petals] run particle cherry_leaves ^-.8 ^.3 ^-.2 .1 .1 .1 0 1
execute at @e[tag=auto_petals] run particle cherry_leaves ^-.4 ^.15 ^ .1 .1 .1 0 1
execute at @e[tag=auto_petals] run particle cherry_leaves ^ ^ ^.2 .1 .1 .1 0 1
execute at @e[tag=auto_petals] run particle cherry_leaves ^.4 ^-.15 ^ .1 .1 .1 0 1
execute at @e[tag=auto_petals] run particle cherry_leaves ^.8 ^-.3 ^-.2 .1 .1 .1 0 1

execute at @e[tag=auto_petals] run particle dust{color:[1.0, .7, 1.0], scale:.8} ^-.8 ^.3 ^-.2 .1 .1 .1 0 5
execute at @e[tag=auto_petals] run particle dust{color:[1.0, .7, 1.0], scale:.8} ^-.4 ^.15 ^ .1 .1 .1 0 5
execute at @e[tag=auto_petals] run particle dust{color:[1.0, .7, 1.0], scale:.8} ^ ^ ^.2 .1 .1 .1 0 5
execute at @e[tag=auto_petals] run particle dust{color:[1.0, .7, 1.0], scale:.8} ^.4 ^-.15 ^ .1 .1 .1 0 5
execute at @e[tag=auto_petals] run particle dust{color:[1.0, .7, 1.0], scale:.8} ^.8 ^-.3 ^-.2 .1 .1 .1 0 5


##### If hit
execute as @e[tag=autoTarget_petals] run damage @s 1 minecraft:out_of_world
execute if entity @e[tag=autoTarget_petals] run effect give @e[tag=autoTarget_petals] regeneration infinite 10 true
execute if entity @e[tag=autoTarget_petals] run scoreboard players add @e[tag=autoTarget_petals] dmg 5
execute if entity @e[tag=autoTarget_petals] run function code:units/health/damage
execute if entity @e[tag=autoTarget_petals] at @e[tag=autoTarget_petals] run playsound entity.player.attack.strong ambient @a ~ ~ ~ 1 1.3



kill @e[tag=auto_petals]
tag @e[tag=autoTarget_petals] remove autoTarget_petals
