
execute at @e[tag=volcanoHit] run summon marker ~ ~ ~ {Tags:["fire","effect","passenger","hasLife","volcanoEffect"]}
scoreboard players set @e[tag=volcanoEffect] life -100
scoreboard players set @e[tag=volcanoEffect] effDmg 2

tag @e[tag=volcanoHit,limit=1] add gettingHit

execute as @e[tag=volcanoEffect] at @s run ride @s mount @e[tag=volcanoHit,tag=gettingHit,distance=..5,sort=nearest,limit=1]
tag @e[tag=volcanoEffect] remove volcanoEffect
tag @e[tag=gettingHit] remove volcanoHit
tag @e[tag=gettingHit] remove gettingHit


execute if entity @e[tag=volcanoHit] run function code:spells/mage/volcano/hitenemy
