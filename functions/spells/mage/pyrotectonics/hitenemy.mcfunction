
execute at @e[tag=pyrotectonicsHit] run summon marker ~ ~ ~ {Tags:["fire","effect","passenger","hasLife","pyrotectonicsEffect"]}
scoreboard players set @e[tag=pyrotectonicsEffect] life -60
scoreboard players set @e[tag=pyrotectonicsEffect] effDmg 1

tag @e[tag=pyrotectonicsHit,limit=1] add gettingHit

execute as @e[tag=pyrotectonicsEffect] at @s run ride @s mount @e[tag=pyrotectonicsHit,tag=gettingHit,distance=..5,sort=nearest,limit=1]
tag @e[tag=pyrotectonicsEffect] remove pyrotectonicsEffect
tag @e[tag=gettingHit] remove pyrotectonicsHit
tag @e[tag=gettingHit] remove gettingHit


execute if entity @e[tag=pyrotectonicsHit] run function code:spells/mage/pyrotectonics/hitenemy
