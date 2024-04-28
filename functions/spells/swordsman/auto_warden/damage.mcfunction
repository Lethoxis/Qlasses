
##### If hit
execute as @e[tag=autoTarget_warden] run damage @s 1 minecraft:out_of_world
execute if entity @e[tag=autoTarget_warden] run effect give @e[tag=autoTarget_warden] regeneration infinite 10 true
execute if entity @e[tag=autoTarget_warden] as @a[scores={auto=1902},sort=nearest,limit=1] if entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run scoreboard players add @e[tag=autoTarget_warden] dmg 8
execute if entity @e[tag=autoTarget_warden] run scoreboard players add @e[tag=autoTarget_warden] dmg 9
execute if entity @e[tag=autoTarget_warden] run function code:units/health/damage
execute if entity @e[tag=autoTarget_warden] at @e[tag=autoTarget_warden] run playsound entity.player.attack.strong ambient @a ~ ~ ~ 1 .9



kill @e[tag=auto_warden]
tag @e[tag=autoTarget_warden] remove autoTarget_warden
