
execute if entity @e[tag=projectile,tag=shackled_hell,tag=!flame] run function code:spells/mage/shackled_hell/tick_shackle
execute if entity @e[tag=projectile,tag=shackled_hell,tag=flame] run function code:spells/mage/shackled_hell/tick_flame

###### Death
kill @e[tag=projectile,tag=shackled_hell,tag=!flame,scores={life=40..}]
execute as @e[tag=projectile,tag=shackled_hell,tag=flame,scores={life=60..}] at @s run kill @e[tag=shackled_hell_effect,sort=nearest,limit=2]
kill @e[tag=projectile,tag=shackled_hell,tag=flame,scores={life=60..}]
