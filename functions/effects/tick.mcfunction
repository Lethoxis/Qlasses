
execute as @e unless score @s fire matches -500.. run scoreboard players set @s fire 0
execute if entity @e[scores={fire=1..}] run function code:effects/fire/tick
execute if entity @e[scores={bubble_binded=1..}] run function code:effects/bubble_binded/tick
