
##### Going
execute as @e[tag=projectile,tag=pyrotectonics] at @s run tp @s ^ ^ ^.25



execute as @e[tag=projectile,tag=pyrotectonics,scores={life=10}] at @s run summon marker ^ ^ ^ {Tags:["pyrotectonics_erupt","hasLife"]}

execute as @e[tag=projectile,tag=pyrotectonics,scores={life=20}] at @s run summon marker ^-1.5 ^ ^ {Tags:["pyrotectonics_erupt","hasLife"]}
execute as @e[tag=projectile,tag=pyrotectonics,scores={life=20}] at @s run summon marker ^1.5 ^ ^ {Tags:["pyrotectonics_erupt","hasLife"]}

execute as @e[tag=projectile,tag=pyrotectonics,scores={life=30}] at @s run summon marker ^-3 ^ ^ {Tags:["pyrotectonics_erupt","hasLife"]}
execute as @e[tag=projectile,tag=pyrotectonics,scores={life=30}] at @s run summon marker ^ ^ ^ {Tags:["pyrotectonics_erupt","hasLife"]}
execute as @e[tag=projectile,tag=pyrotectonics,scores={life=30}] at @s run summon marker ^3 ^ ^ {Tags:["pyrotectonics_erupt","hasLife"]}

execute as @e[tag=projectile,tag=pyrotectonics,scores={life=40}] at @s run summon marker ^-4.5 ^ ^ {Tags:["pyrotectonics_erupt","hasLife"]}
execute as @e[tag=projectile,tag=pyrotectonics,scores={life=40}] at @s run summon marker ^-1.5 ^ ^ {Tags:["pyrotectonics_erupt","hasLife"]}
execute as @e[tag=projectile,tag=pyrotectonics,scores={life=40}] at @s run summon marker ^1.5 ^ ^ {Tags:["pyrotectonics_erupt","hasLife"]}
execute as @e[tag=projectile,tag=pyrotectonics,scores={life=40}] at @s run summon marker ^4.5 ^ ^ {Tags:["pyrotectonics_erupt","hasLife"]}

execute as @e[tag=projectile,tag=pyrotectonics,scores={life=50}] at @s run summon marker ^-6 ^ ^ {Tags:["pyrotectonics_erupt","hasLife"]}
execute as @e[tag=projectile,tag=pyrotectonics,scores={life=50}] at @s run summon marker ^-3 ^ ^ {Tags:["pyrotectonics_erupt","hasLife"]}
execute as @e[tag=projectile,tag=pyrotectonics,scores={life=50}] at @s run summon marker ^ ^ ^ {Tags:["pyrotectonics_erupt","hasLife"]}
execute as @e[tag=projectile,tag=pyrotectonics,scores={life=50}] at @s run summon marker ^3 ^ ^ {Tags:["pyrotectonics_erupt","hasLife"]}
execute as @e[tag=projectile,tag=pyrotectonics,scores={life=50}] at @s run summon marker ^6 ^ ^ {Tags:["pyrotectonics_erupt","hasLife"]}



###### Death
kill @e[tag=pyrotectonics,scores={life=50..}]
