
summon creeper ~ ~ ~ {Invulnerable:1b,Tags:["enemy"],Passengers:[{id:"minecraft:text_display",Tags:["healthbar","passenger"],billboard:"center",text:'{"text":""}'}]}
execute as @e[type=creeper] unless score @s hp matches 0.. run scoreboard players set @s mhp 250
execute as @e[type=creeper] unless score @s hp matches 0.. run scoreboard players set @s hp 250
