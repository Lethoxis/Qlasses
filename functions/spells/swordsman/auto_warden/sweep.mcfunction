
##### VSFX
execute as @e[tag=auto_warden] at @s run playsound entity.player.attack.sweep ambient @a ~ ~ ~ 1 0
execute as @e[tag=auto_warden] at @s run tag @e[tag=enemy,distance=..2] add autoTarget_warden

execute at @e[tag=auto_warden] run particle sweep_attack ^-1.5 ^ ^-.4 0 0 0 0 1
execute at @e[tag=auto_warden] run particle sweep_attack ^-1 ^ ^-.2 0 0 0 0 1
execute at @e[tag=auto_warden] run particle sweep_attack ^-.5 ^-.1 ^ 0 0 0 0 1
execute at @e[tag=auto_warden] run particle sweep_attack ^ ^ ^ 0 0 0 0 1
execute at @e[tag=auto_warden] run particle sweep_attack ^.5 ^-.1 ^ 0 0 0 0 1
execute at @e[tag=auto_warden] run particle sweep_attack ^1 ^ ^-.2 0 0 0 0 1
execute at @e[tag=auto_warden] run particle sweep_attack ^1.5 ^ ^-.4 0 0 0 0 1

execute at @e[tag=auto_warden] run particle dust_color_transition 0 .6 .6 1.6 0 0 0 ^-1.5 ^ ^-.4 .1 .1 .1 0 10
execute at @e[tag=auto_warden] run particle dust_color_transition 0 .6 .6 1.6 0 0 0 ^-1 ^ ^-.2 .1 .1 .1 0 10
execute at @e[tag=auto_warden] run particle dust_color_transition 0 .6 .6 1.6 0 0 0 ^-.5 ^-.1 ^ .1 .1 .1 0 10
execute at @e[tag=auto_warden] run particle dust_color_transition 0 .6 .6 1.6 0 0 0 ^ ^ ^ .1 .1 .1 0 10
execute at @e[tag=auto_warden] run particle dust_color_transition 0 .6 .6 1.6 0 0 0 ^.5 ^-.1 ^ .1 .1 .1 0 10
execute at @e[tag=auto_warden] run particle dust_color_transition 0 .6 .6 1.6 0 0 0 ^1 ^ ^-.2 .1 .1 .1 0 10
execute at @e[tag=auto_warden] run particle dust_color_transition 0 .6 .6 1.6 0 0 0 ^1.5 ^ ^-.4 .1 .1 .1 0 10


##### Move
execute as @e[tag=auto_warden] at @s run tp @s ^-1.7 ^ ^-1.2 ~35 ~

execute if entity @e[tag=auto_warden,scores={life=..1}] run schedule function code:spells/swordsman/auto_warden/sweep 1t
execute if entity @e[tag=auto_warden,scores={life=2}] run function code:spells/swordsman/auto_warden/damage
