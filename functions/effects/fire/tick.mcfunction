
scoreboard players add #fireDmg value 1
execute if score #fireDmg value matches 4.. run scoreboard players set #fireDmg value 0


####################### Dmg ########################
execute if score #fireDmg value matches 0 as @e[tag=effect,tag=fire] at @s on vehicle run scoreboard players operation @s dmg += @e[tag=effect,tag=fire,sort=nearest,limit=1] effDmg
execute if score #fireDmg value matches 0 run function code:units/health/damage


execute as @e[tag=effect,tag=fire,scores={life=-1..}] on vehicle run data merge entity @s {HasVisualFire:0b}
execute as @e[tag=effect,tag=fire,scores={life=..-2}] on vehicle run data merge entity @s {HasVisualFire:1b}


####################### End ########################
kill @e[tag=effect,tag=fire,scores={life=-1..}]
