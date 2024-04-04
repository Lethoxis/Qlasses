
##### Charging
execute as @e[tag=volcano,scores={life=..24}] at @s run particle flame ^ ^.2 ^5 .04 .04 .04 .01 2
execute as @e[tag=volcano,scores={life=..24}] at @s run tp @s ~ ~ ~ ~7.5 ~

execute as @e[tag=volcano,scores={life=..24}] at @s run particle flame ^ ^.2 ^5 .04 .04 .04 .01 2
execute as @e[tag=volcano,scores={life=..24}] at @s run tp @s ~ ~ ~ ~7.5 ~

execute as @e[tag=volcano,scores={life=..24}] at @s run playsound block.wool.hit ambient @a ~ ~ ~ .6 0



##### Exploding
execute if entity @e[tag=volcano,scores={life=24..}] run function code:spells/mage/volcano/hit



###### Death
kill @e[tag=volcano,scores={life=27..}]
