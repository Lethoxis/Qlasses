
##### VFX
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run tp @s ^ ^ ^.6
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dust_color_transition 0 1 1 1 0 0 1 ^.0 ^.9 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dust_color_transition 0 1 1 1 0 0 1 ^.3 ^.6 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dust_color_transition 0 1 1 1 0 0 1 ^.6 ^.3 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dust_color_transition 0 1 1 1 0 0 1 ^.9 ^.0 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dust_color_transition 0 1 1 1 0 0 1 ^.6 ^-.3 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dust_color_transition 0 1 1 1 0 0 1 ^.3 ^-.6 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dust_color_transition 0 1 1 1 0 0 1 ^.0 ^-.9 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dust_color_transition 0 1 1 1 0 0 1 ^-.3 ^-.6 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dust_color_transition 0 1 1 1 0 0 1 ^-.6 ^-.3 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dust_color_transition 0 1 1 1 0 0 1 ^-.9 ^.0 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dust_color_transition 0 1 1 1 0 0 1 ^-.6 ^.3 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dust_color_transition 0 1 1 1 0 0 1 ^-.3 ^.6 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run tp @s ^ ^ ^.6
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dripping_water ^.0 ^.9 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dripping_water ^.3 ^.6 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dripping_water ^.6 ^.3 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dripping_water ^.9 ^.0 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dripping_water ^.6 ^-.3 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dripping_water ^.3 ^-.6 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dripping_water ^.0 ^-.9 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dripping_water ^-.3 ^-.6 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dripping_water ^-.6 ^-.3 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dripping_water ^-.9 ^.0 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dripping_water ^-.6 ^.3 ^ .05 .05 .05 0 1 force
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run particle dripping_water ^-.3 ^.6 ^ .05 .05 .05 0 1 force



##### Hit (enemy or wall)
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s positioned ^ ^ ^.5 unless block ~ ~ ~ air run tag @s add hitwall
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s positioned ^ ^ ^1.5 unless block ~ ~ ~ air run tag @s add hitwall
tag @e[tag=projectile,tag=diamond_waters_instance,tag=hitwall] add hit


execute as @e[tag=projectile,tag=diamond_waters_instance] at @s positioned ^ ^-1 ^1 if entity @e[tag=enemy,distance=..1.6] run tag @s add hit
execute as @e[tag=projectile,tag=diamond_waters_instance] at @s positioned ^ ^-1 ^1 run tag @e[tag=enemy,distance=..1.6] add diamond_waters_hit


kill @e[tag=projectile,tag=diamond_waters_instance,tag=hitwall]
tag @e[tag=projectile,tag=diamond_waters_instance,tag=hit] remove hit
