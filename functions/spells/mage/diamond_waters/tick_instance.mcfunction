

#execute as @e[tag=projectile,tag=diamond_waters_instance] at @s run playsound item.trident.return ambient @a ~ ~ ~ 1 2


##### Go
function code:spells/mage/diamond_waters/step
function code:spells/mage/diamond_waters/step
function code:spells/mage/diamond_waters/step


##### Dmg
scoreboard players add @e[tag=diamond_waters_hit] dmg 6
execute as @e[tag=diamond_waters_hit] at @s run effect give @s slowness 2 1 true

execute as @e[tag=diamond_waters_hit] at @s run particle dust 0 .5 1 1 ~ ~1.5 ~ .4 .8 .4 0 30
execute as @e[tag=diamond_waters_hit] at @s run playsound ambient.underwater.enter ambient @a ~ ~ ~ .1 0

execute if entity @e[tag=diamond_waters_hit] run function code:units/health/damage
tag @e[tag=diamond_waters_hit] remove diamond_waters_hit


###### Death
kill @e[tag=projectile,tag=diamond_waters_instance,scores={life=10..}]
