
execute as @e[tag=life_spring_effect] at @s run particle dust_color_transition 0 .7 1 1 1 1 1 ^ ^ ^ .06 .06 .06 .02 2


execute as @e[tag=life_spring_effect,scores={life=..8}] at @s run tp @s ^ ^ ^.3 ~ ~3
execute as @e[tag=life_spring_effect,scores={life=8..18}] at @s run tp @s ^ ^ ^.3 ~ ~12
execute as @e[tag=life_spring_effect,scores={life=18..}] at @s run tp @s ^ ^ ^.3 ~ ~2

execute as @e[tag=life_spring_effect] at @s unless block ^ ^ ^.3 air run playsound block.pointed_dripstone.drip_water_into_cauldron ambient @a ~ ~ ~ 3 1.5
execute as @e[tag=life_spring_effect] at @s unless block ^ ^ ^.3 air run kill @s
kill @e[tag=life_spring_effect,scores={life=100..}]
