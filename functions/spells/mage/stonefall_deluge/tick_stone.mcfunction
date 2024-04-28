
execute as @e[tag=stonefall_deluge_stone,scores={life=1}] run data merge entity @s {block_state:{Name:"minecraft:pointed_dripstone",Properties:{vertical_direction:"down"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,2f,2f]}}



execute as @e[tag=stonefall_deluge_stone] at @s run tp @s ~ ~-.5 ~
execute as @e[tag=stonefall_deluge_stone,scores={life=3..}] at @s run tp @s ~ ~-.3 ~
execute as @e[tag=stonefall_deluge_stone,scores={life=6..}] at @s run tp @s ~ ~-.3 ~

execute as @e[tag=stonefall_deluge_stone] at @s run particle block{block_state:"pointed_dripstone"} ~ ~1.8 ~ 0 0 0 0 4


execute as @e[tag=stonefall_deluge_stone] at @s unless block ~ ~-1.2 ~ air run tag @s add hit
execute as @e[tag=stonefall_deluge_stone,tag=hit] at @s run playsound block.pointed_dripstone.break ambient @a ~ ~ ~ 1.5 .8
execute as @e[tag=stonefall_deluge_stone,tag=hit] at @s run particle item{item:"pointed_dripstone"} ~ ~.5 ~ .4 .4 .4 0 100
execute as @e[tag=stonefall_deluge_stone,tag=hit] at @s run particle cloud ~ ~ ~ .4 .4 .4 .03 5


execute as @e[tag=stonefall_deluge_stone,tag=hit] at @s positioned ~ ~.5 ~ run scoreboard players add @e[tag=enemy,distance=..3.5] dmg 5
execute if entity @e[tag=stonefall_deluge_stone,tag=hit] run function code:units/health/damage


kill @e[tag=stonefall_deluge_stone,tag=hit]
