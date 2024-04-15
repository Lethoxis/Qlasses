

execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s run scoreboard players set @e[tag=enemy,distance=..5.5,sort=nearest] bubble_binded 60
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s run scoreboard players add @e[tag=enemy,distance=..5.5,sort=nearest] dmg 15
function code:units/health/damage


###### VFX
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s align y run tp @s ~ ~ ~ 0 90
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s unless block ~ ~.2 ~ air run tp @s ~ ~1 ~
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s unless block ~ ~.2 ~ air run tp @s ~ ~1 ~

function code:spells/mage/bubble_bind/draw_circle
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/bubble_bind/draw_circle
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/bubble_bind/draw_circle
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/bubble_bind/draw_circle
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/bubble_bind/draw_circle
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/bubble_bind/draw_circle
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/bubble_bind/draw_circle
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/bubble_bind/draw_circle
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/bubble_bind/draw_circle
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/bubble_bind/draw_circle
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/bubble_bind/draw_circle
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/bubble_bind/draw_circle
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/bubble_bind/draw_circle
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/bubble_bind/draw_circle
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/bubble_bind/draw_circle
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/bubble_bind/draw_circle
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/bubble_bind/draw_circle
execute as @e[tag=projectile,tag=bubble_bind,tag=hit] at @s align y run tp @s ~ ~ ~ 0 ~-10
function code:spells/mage/bubble_bind/draw_circle



###### SFX
execute as @e[tag=projectile,tag=bubble_bind,tag=hit,tag=!hitwall] at @s run playsound block.bubble_column.whirlpool_inside ambient @a ~ ~ ~ 1 0
execute as @e[tag=projectile,tag=bubble_bind,tag=hit,tag=!hitwall] at @s run playsound block.bubble_column.whirlpool_inside ambient @a ~ ~ ~ 1 .6
execute as @e[tag=projectile,tag=bubble_bind,tag=hit,tag=!hitwall] at @s run playsound block.bubble_column.whirlpool_inside ambient @a ~ ~ ~ 1 .8
