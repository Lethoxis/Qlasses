
execute as @a[scores={cast=1901}] at @s run playsound entity.player.attack.sweep ambient @a ~ ~ ~ 1 1

execute as @a[scores={cast=1901}] at @s positioned ^ ^ ^2 run tag @e[tag=enemy,distance=..2.5,sort=nearest,limit=2] add autoTarget_star


tag @a[scores={cast=1901}] add spawnProjectile
function code:misc/player_spawn_projectile
execute as @a[scores={cast=1901}] at @s run tag @e[tag=projectile,scores={life=0},sort=nearest,limit=1] add auto_star
execute as @a[scores={cast=1901}] at @s positioned ~ ~1.3 ~ run tp @e[tag=projectile,scores={life=0},sort=nearest,limit=1] ^ ^ ^2



##### VSFX
execute at @e[tag=auto_star] run particle sweep_attack ^-1.5 ^ ^-.4 0 0 0 0 1
execute at @e[tag=auto_star] run particle sweep_attack ^-1 ^ ^-.2 0 0 0 0 1
execute at @e[tag=auto_star] run particle sweep_attack ^-.5 ^-.1 ^ 0 0 0 0 1
execute at @e[tag=auto_star] run particle sweep_attack ^ ^ ^ 0 0 0 0 1
execute at @e[tag=auto_star] run particle sweep_attack ^.5 ^-.1 ^ 0 0 0 0 1
execute at @e[tag=auto_star] run particle sweep_attack ^1 ^ ^-.2 0 0 0 0 1
execute at @e[tag=auto_star] run particle sweep_attack ^1.5 ^ ^-.4 0 0 0 0 1

execute at @e[tag=auto_star] run particle dust 1 1 1 .8 ^-1.5 ^ ^-.4 .1 .1 .1 0 10
execute at @e[tag=auto_star] run particle dust 1 1 1 .8 ^-1 ^ ^-.2 .1 .1 .1 0 10
execute at @e[tag=auto_star] run particle dust 1 1 1 .8 ^-.5 ^-.1 ^ .1 .1 .1 0 10
execute at @e[tag=auto_star] run particle dust 1 1 1 .8 ^ ^ ^ .1 .1 .1 0 10
execute at @e[tag=auto_star] run particle dust 1 1 1 .8 ^.5 ^-.1 ^ .1 .1 .1 0 10
execute at @e[tag=auto_star] run particle dust 1 1 1 .8 ^1 ^ ^-.2 .1 .1 .1 0 10
execute at @e[tag=auto_star] run particle dust 1 1 1 .8 ^1.5 ^ ^-.4 .1 .1 .1 0 10


##### If hit
execute as @e[tag=autoTarget_star] run damage @s 1 minecraft:out_of_world
execute if entity @e[tag=autoTarget_star] run effect give @e[tag=autoTarget_star] regeneration infinite 10 true
execute if entity @e[tag=autoTarget_star] if entity @a[scores={cast=1901},nbt={active_effects:[{id:"minecraft:regeneration"}]}] run scoreboard players add @e[tag=autoTarget_star] dmg 5
execute if entity @e[tag=autoTarget_star] run scoreboard players add @e[tag=autoTarget_star] dmg 7
execute if entity @e[tag=autoTarget_star] run function code:units/health/damage
execute if entity @e[tag=autoTarget_star] at @e[tag=autoTarget_star] run playsound entity.player.attack.strong ambient @a ~ ~ ~ 1 .9



kill @e[tag=auto_star]
tag @e[tag=autoTarget_star] remove autoTarget_star
