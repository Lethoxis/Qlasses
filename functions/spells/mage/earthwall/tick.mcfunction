
##### Emerging
execute as @e[tag=projectile,tag=earthwall,scores={life=..9}] at @s run particle block{block_state:"pointed_dripstone"} ~ ~ ~ .4 1 .4 .01 20
execute as @e[tag=projectile,tag=earthwall,scores={life=..9}] at @s run playsound item.armor.equip_wolf ambient @a ~ ~ ~ .2 0
execute as @e[tag=projectile,tag=earthwall,scores={life=..9}] at @s run tp @s ~ ~.3 ~



execute as @e[tag=projectile,tag=earthwall,scores={life=10}] at @s run fill ^-1 ^-3 ^ ^1 ^ ^ barrier keep



###### Death
execute as @e[tag=projectile,tag=earthwall,scores={life=150}] at @s run fill ^-1 ^-3 ^ ^1 ^ ^ air replace barrier
execute as @e[tag=projectile,tag=earthwall,scores={life=150}] at @s run particle block{block_state:"pointed_dripstone"} ~ ~-1 ~ .6 1.2 .6 .01 200
execute as @e[tag=projectile,tag=earthwall,scores={life=150}] at @s run playsound block.dripstone_block.break ambient @a ~ ~ ~ 1 0
execute as @e[tag=projectile,tag=earthwall,scores={life=150}] at @s run playsound block.dripstone_block.break ambient @a ~ ~ ~ 1 0
execute as @e[tag=projectile,tag=earthwall,scores={life=150}] at @s run playsound block.dripstone_block.break ambient @a ~ ~ ~ 1 0
kill @e[tag=projectile,tag=earthwall,scores={life=150..}]
