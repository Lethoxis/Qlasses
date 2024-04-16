
execute if entity @e[tag=projectile,tag=hellfire_shackles,tag=!flame] run function code:spells/mage/hellfire_shackles/tick_shackle
execute if entity @e[tag=projectile,tag=hellfire_shackles,tag=flame] run function code:spells/mage/hellfire_shackles/tick_flame

###### Death
kill @e[tag=projectile,tag=hellfire_shackles,tag=!flame,scores={life=40..}]
execute as @e[tag=projectile,tag=hellfire_shackles,tag=flame,scores={life=80..}] at @s run kill @e[tag=hellfire_shackles_effect,scores={life=77..}]
kill @e[tag=projectile,tag=hellfire_shackles,tag=flame,scores={life=80..}]
