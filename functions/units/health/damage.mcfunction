
execute as @e[scores={dmg=1..}] on passengers if entity @s[tag=healthbar] at @s run summon text_display ~ ~ ~ {Tags:["damage","hasLife","new"],billboard:"center",background:0b,shadow:1b,text:'["",{"score":{"name":"@e[scores={dmg=1..},sort=nearest,limit=1]","objective":"dmg"},"color":"#BF0000"}]'}

#################### Random text damage movement
scoreboard players add #damagepos value 1
execute if score #damagepos value matches 4.. run scoreboard players set #damagepos value 0
execute as @e[tag=damage,tag=new] run scoreboard players operation @s value = #damagepos value
tag @e[tag=damage,tag=new] remove new


#################### Damage
execute as @e[scores={dmg=1..}] if score @s hp < @s dmg run scoreboard players operation @s dmg = @s hp
execute as @e[scores={dmg=1..}] run scoreboard players operation @s hp -= @s dmg

execute if entity @e[scores={hp=..0}] run function code:units/health/die

function code:units/health/healthbar

scoreboard players set @e[scores={dmg=1..}] dmg 0

