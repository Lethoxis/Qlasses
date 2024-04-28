
execute as @e[tag=projectile,tag=amethyst_shards] at @s run particle dust{color:[.8, .7, .8], scale:.5} ^ ^ ^ .02 .02 .02 0 2
execute as @e[tag=projectile,tag=amethyst_shards] at @s run particle dust{color:[.8, .7, .8], scale:.5} ^ ^ ^-.5 .02 .02 .02 0 2
execute as @e[tag=projectile,tag=amethyst_shards,scores={life=1},limit=1] at @s run playsound block.amethyst_block.step ambient @a ~ ~ ~ 1 1.1
execute as @e[tag=projectile,tag=amethyst_shards,scores={life=2},limit=1] at @s run playsound block.amethyst_block.step ambient @a ~ ~ ~ 1 1.2
execute as @e[tag=projectile,tag=amethyst_shards,scores={life=3},limit=1] at @s run playsound block.amethyst_block.step ambient @a ~ ~ ~ 1 1.3
execute as @e[tag=projectile,tag=amethyst_shards,scores={life=4},limit=1] at @s run playsound block.amethyst_block.step ambient @a ~ ~ ~ 1 1.4

execute as @e[tag=projectile,tag=amethyst_shards] at @s run tp @s ^ ^ ^1



##### Hit (enemy or wall)
execute as @e[tag=projectile,tag=amethyst_shards] at @s positioned ^ ^ ^1 unless block ~ ~ ~ air run tag @s add hitwall
tag @e[tag=hitwall] add hit

execute as @e[tag=projectile,tag=amethyst_shards] at @s positioned ^ ^ ^1 if entity @e[tag=enemy,distance=..1.3] run tag @s add hit


execute as @e[tag=projectile,tag=amethyst_shards,tag=hit] at @s positioned ^ ^ ^1 run scoreboard players add @e[tag=enemy,distance=..1.3,sort=nearest,limit=1] dmg 5
execute if entity @e[tag=projectile,tag=amethyst_shards,tag=hit] run function code:units/health/damage


execute as @e[tag=projectile,tag=amethyst_shards,tag=hit,tag=!hitwall] at @s positioned ^ ^ ^1 run particle item{item:"large_amethyst_bud"} ~ ~ ~ .5 .5 .5 .3 40
execute as @e[tag=projectile,tag=amethyst_shards,tag=hit,tag=hitwall] at @s positioned ^ ^ ^1 run particle item{item:"large_amethyst_bud"} ~ ~ ~ .4 .4 .4 .1 20
execute as @e[tag=projectile,tag=amethyst_shards,tag=hit] at @s positioned ^ ^ ^1 run playsound block.amethyst_block.break ambient @a ~ ~ ~ 1.5 1.4
kill @e[tag=projectile,tag=amethyst_shards,tag=hit]





###### Death
kill @e[tag=projectile,tag=amethyst_shards,scores={life=30..}]
