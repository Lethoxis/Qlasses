
##### Up
execute as @e[tag=projectile,tag=terra_spikes_spike,scores={life=..5}] at @s run particle block{block_state:"pointed_dripstone"} ~ ~ ~ .4 1 .4 .01 20
execute as @e[tag=projectile,tag=terra_spikes_spike,scores={life=..1}] at @s run playsound item.armor.equip_wolf ambient @a ~ ~ ~ .2 0
execute as @e[tag=projectile,tag=terra_spikes_spike,scores={life=..5}] at @s run tp @s ~ ~.5 ~



execute as @e[tag=terra_spikes_spike,scores={life=..3}] at @s positioned ~ ~.5 ~ run scoreboard players add @e[tag=enemy,distance=..1.3] dmg 3
execute as @e[tag=terra_spikes_spike,scores={life=..5}] at @s positioned ~ ~.5 ~ as @e[tag=enemy,distance=..1.3] at @s run tp @s ~ ~.45 ~
execute if entity @e[tag=terra_spikes_spike,scores={life=..3}] run function code:units/health/damage



##### Down
execute as @e[tag=projectile,tag=terra_spikes_spike,scores={life=13..}] at @s run tp @s ~ ~-.3 ~

execute as @e[tag=projectile,tag=terra_spikes_spike,scores={life=15..}] at @s run playsound block.dripstone_block.break ambient @a ~ ~ ~ .8 0
execute as @e[tag=projectile,tag=terra_spikes_spike,scores={life=15..}] at @s run particle block{block_state:"pointed_dripstone"} ~ ~-1 ~ .6 1.2 .6 .01 40
kill @e[tag=projectile,tag=terra_spikes_spike,scores={life=15..}]
