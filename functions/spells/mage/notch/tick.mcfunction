
scoreboard players add @a[scores={notch=1..}] notch 1


##### Flying up
effect give @a[scores={notch=2}] levitation 1 15 true
effect give @a[scores={notch=2}] glowing 20 0 true
effect give @a[scores={notch=1..}] slow_falling 20 0 true
execute at @a[scores={notch=1..18}] run particle end_rod ~ ~ ~ .2 .4 .2 .05 5

effect clear @a[scores={notch=18}] levitation
effect give @a[scores={notch=18}] levitation 1 1 true



##### Shoot lightnings
execute at @a[scores={notch=18..}] run particle cloud ~ ~ ~ .35 .05 .35 .02 2

execute as @a[scores={notch=25}] at @s run playsound entity.breeze.inhale ambient @a ~ ~ ~ 1.1 1
execute as @a[scores={notch=25}] at @s run playsound entity.warden.sonic_charge ambient @a ~ ~ ~ .7 1.8
execute as @a[scores={notch=65}] at @s run playsound entity.breeze.inhale ambient @a ~ ~ ~ 1.1 1
execute as @a[scores={notch=65}] at @s run playsound entity.warden.sonic_charge ambient @a ~ ~ ~ .7 1.8
execute as @a[scores={notch=110}] at @s run playsound entity.breeze.inhale ambient @a ~ ~ ~ 1.5 0
execute as @a[scores={notch=110..120}] at @s run playsound entity.breeze.inhale ambient @a ~ ~ ~ .9 1
execute as @a[scores={notch=121}] at @s run playsound entity.breeze.inhale ambient @a ~ ~ ~ 1.1 2
execute as @a[scores={notch=120}] at @s run playsound entity.warden.sonic_charge ambient @a ~ ~ ~ .7 1.8

tag @a[scores={notch=45}] add summon_lightning
execute if entity @a[scores={notch=45}] run function code:spells/mage/notch/summon_lightning
tag @a[scores={notch=85}] add summon_lightning
execute if entity @a[scores={notch=85}] run function code:spells/mage/notch/summon_lightning
tag @a[scores={notch=140}] add summon_lightning
tag @a[scores={notch=140}] add last_lightning
execute if entity @a[scores={notch=140}] run function code:spells/mage/notch/summon_last_lightning



##### End
effect clear @a[scores={notch=150..}] slow_falling
effect clear @a[scores={notch=150..}] glowing
scoreboard players set @a[scores={notch=150..}] notch 0
