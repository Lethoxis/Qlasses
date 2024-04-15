
##### Channeling
execute as @e[tag=projectile,tag=blitz_dash,scores={life=..18}] at @s run tp @s ~ ~ ~ ~20 ~
execute as @e[tag=projectile,tag=blitz_dash,scores={life=..18}] at @s run particle instant_effect ^ ^.1 ^1.5 .1 .1 .1 .02 10
execute as @e[tag=projectile,tag=blitz_dash,scores={life=..18}] at @s run tp @s ~ ~ ~ ~20 ~
execute as @e[tag=projectile,tag=blitz_dash,scores={life=..18}] at @s run particle instant_effect ^ ^.1 ^1.5 .1 .1 .1 .02 10
execute as @e[tag=projectile,tag=blitz_dash,scores={life=..18}] at @s as @a[tag=blitz_dashing,sort=nearest,limit=1] run tp @s ~ ~ ~
execute as @e[tag=projectile,tag=blitz_dash,scores={life=18}] at @a[tag=blitz_dashing,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0


##### Dash
execute if entity @e[tag=projectile,tag=blitz_dash,scores={life=18..}] run function code:spells/mage/blitz_dash/dash
execute if entity @e[tag=projectile,tag=blitz_dash,scores={life=18..}] run function code:spells/mage/blitz_dash/dash







###### Death
execute at @e[tag=projectile,tag=blitz_dash,scores={life=22..}] run tag @e[tag=blitz_dashing,sort=nearest,limit=1] remove channeling
execute at @e[tag=projectile,tag=blitz_dash,scores={life=22..}] run tag @e[tag=blitz_dashing,sort=nearest,limit=1] remove blitz_dashing
kill @e[tag=projectile,tag=blitz_dash,scores={life=22..}]

