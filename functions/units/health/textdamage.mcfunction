
execute as @e[type=text_display,tag=damage,scores={life=..10}] at @s run tp @s ~ ~.2 ~
execute as @e[type=text_display,tag=damage,scores={life=6..}] at @s run tp @s ~ ~-.03 ~
execute as @e[type=text_display,tag=damage,scores={life=9..}] at @s run tp @s ~ ~-.03 ~

scoreboard players remove @e[type=text_display,tag=damage,scores={value=4..}] value 4
execute as @e[type=text_display,tag=damage,scores={value=0,life=..17}] at @s run tp @s ~.03 ~-.025 ~.03
execute as @e[type=text_display,tag=damage,scores={value=1,life=..17}] at @s run tp @s ~.03 ~-.025 ~-.03
execute as @e[type=text_display,tag=damage,scores={value=2,life=..17}] at @s run tp @s ~-.03 ~-.025 ~-.03
execute as @e[type=text_display,tag=damage,scores={value=3,life=..17}] at @s run tp @s ~-.03 ~-.025 ~.03



execute as @e[type=text_display,tag=damage,scores={life=10}] run data merge entity @s {text_opacity:-50}
execute as @e[type=text_display,tag=damage,scores={life=15}] run data merge entity @s {text_opacity:-100}
execute as @e[type=text_display,tag=damage,scores={life=20}] run data merge entity @s {text_opacity:70}


kill @e[type=text_display,tag=damage,scores={life=25..}]
