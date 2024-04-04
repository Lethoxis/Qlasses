
# Right click
execute as @e[type=interaction] on target run scoreboard players add @s rc 1
execute as @e[type=interaction] run data remove entity @s interaction

# Left click
execute as @e[type=interaction] on attacker run scoreboard players add @s lc 1
execute as @e[type=interaction] run data remove entity @s attack

