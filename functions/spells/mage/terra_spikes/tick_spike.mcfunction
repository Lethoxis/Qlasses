
##### Up
execute as @e[tag=projectile,tag=terra_spikes_spike,scores={life=..9}] at @s run particle block pointed_dripstone ~ ~ ~ .4 1 .4 .01 20
execute as @e[tag=projectile,tag=terra_spikes_spike,scores={life=..9}] at @s run playsound item.armor.equip_wolf ambient @a ~ ~ ~ .2 0
execute as @e[tag=projectile,tag=terra_spikes_spike,scores={life=..9}] at @s run tp @s ~ ~.3 ~



execute as @e[tag=terra_spikes_spike,scores={life=..9}] at @s positioned ~ ~.5 ~ run scoreboard players add @e[tag=enemy,distance=..3] dmg 2
execute as @e[tag=terra_spikes_spike,scores={life=..9}] at @s positioned ~ ~.5 ~ as @e[tag=enemy,distance=..3] at @s run tp @s ~ ~.25 ~
execute if entity @e[tag=terra_spikes_spike,scores={life=..9}] run function code:units/health/damage



##### Down
execute as @e[tag=projectile,tag=terra_spikes_spike,scores={life=13..}] at @s run particle block pointed_dripstone ~ ~ ~ .4 1 .4 .01 20
execute as @e[tag=projectile,tag=terra_spikes_spike,scores={life=13..}] at @s run playsound item.armor.equip_wolf ambient @a ~ ~ ~ .2 0
execute as @e[tag=projectile,tag=terra_spikes_spike,scores={life=13..}] at @s run tp @s ~ ~-.3 ~

execute as @e[tag=projectile,tag=terra_spikes_spike,scores={life=22..}] at @s run playsound block.dripstone_block.break ambient @a ~ ~ ~ 1 0
kill @e[tag=projectile,tag=terra_spikes_spike,scores={life=22..}]
