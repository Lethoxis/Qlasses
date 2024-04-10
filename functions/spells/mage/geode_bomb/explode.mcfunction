

execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s run scoreboard players add @e[tag=enemy,distance=..4.5,sort=nearest] dmg 25
function code:units/health/damage




###### VFX
execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s align y run tp @s ~ ~ ~ 0 90
execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s unless block ~ ~.2 ~ air run tp @s ~ ~1 ~
execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s unless block ~ ~.2 ~ air run tp @s ~ ~1 ~

function code:spells/mage/geode_bomb/draw_circle
execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/geode_bomb/draw_circle
execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/geode_bomb/draw_circle
execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/geode_bomb/draw_circle
execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/geode_bomb/draw_circle
execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/geode_bomb/draw_circle
execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/geode_bomb/draw_circle
execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/geode_bomb/draw_circle
execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/geode_bomb/draw_circle
execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/geode_bomb/draw_circle
execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/geode_bomb/draw_circle
execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/geode_bomb/draw_circle
execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/geode_bomb/draw_circle
execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/geode_bomb/draw_circle
execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/geode_bomb/draw_circle
execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/geode_bomb/draw_circle
execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/geode_bomb/draw_circle
execute as @e[tag=projectile,tag=geode_bomb,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/geode_bomb/draw_circle



###### SFX
execute as @e[tag=projectile,tag=geode_bomb,tag=hit,tag=!hitwall] at @s run particle explosion ~ ~.5 ~ 1.2 1.2 1.2 .5 8
execute as @e[tag=projectile,tag=geode_bomb,tag=hit,tag=!hitwall] at @s run particle smoke ~ ~.5 ~ 1 1 1 .1 150
execute as @e[tag=projectile,tag=geode_bomb,tag=hit,tag=!hitwall] at @s run playsound block.stone.break ambient @a ~ ~ ~ 1 .6
execute as @e[tag=projectile,tag=geode_bomb,tag=hit,tag=!hitwall] at @s run playsound block.calcite.break ambient @a ~ ~ ~ 1 1
execute as @e[tag=projectile,tag=geode_bomb,tag=hit,tag=!hitwall] at @s run playsound entity.generic.explode ambient @a ~ ~ ~ .7 0

