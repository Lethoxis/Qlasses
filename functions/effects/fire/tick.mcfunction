
scoreboard players add #fireDmg value 1
execute if score #fireDmg value matches 6.. run scoreboard players set #fireDmg value 0

scoreboard players remove @e[scores={fire=1..}] fire 1

####################### Dmg ########################
execute if score #fireDmg value matches 0 as @e[scores={fire=1..}] run scoreboard players add @s dmg 1
execute if score #fireDmg value matches 0 as @e[scores={fire=1..},tag=double_fire] run scoreboard players add @s dmg 1
execute if score #fireDmg value matches 0 run function code:units/health/damage


execute if score #fireDmg value matches 0 as @e[scores={fire=1..},tag=double_fire] at @s run particle lava ~ ~.8 ~ .1 1 .1 0 2


execute as @e[scores={fire=2..}] run data merge entity @s {HasVisualFire:1b}

execute as @e[scores={fire=..1}] run data merge entity @s {HasVisualFire:0b}


