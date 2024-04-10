
tag @e[tag=passenger] remove stillalive
execute as @e[tag=enemy,scores={hp=1..}] on passengers run tag @s[tag=passenger] add stillalive
execute as @e[tag=projectile] on passengers run tag @s[tag=passenger] add stillalive

execute as @e[scores={hp=..0}] run kill @s
kill @e[tag=passenger,tag=!stillalive]
