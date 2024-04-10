
scoreboard players set @e[tag=enemy] php 100
execute as @e[tag=enemy] run scoreboard players operation @s php *= @s hp
execute as @e[tag=enemy] run scoreboard players operation @s php /= @s mhp

execute as @e[tag=healthbar] at @s if score @e[tag=enemy,sort=nearest,limit=1] php matches 100.. run data merge entity @s {background:-1775687383,text:'[" ",{"score":{"name":"@e[tag=enemy,sort=nearest,limit=1]","objective":"hp"},"color":"red"}," ",{"text":"||||||||||","color":"red","bold":true}," "]'}
execute as @e[tag=healthbar] at @s if score @e[tag=enemy,sort=nearest,limit=1] php matches 90..99 run data merge entity @s {background:-1775687383,text:'[" ",{"score":{"name":"@e[tag=enemy,sort=nearest,limit=1]","objective":"hp"},"color":"red"}," ",{"text":"|||||||||","color":"red","bold":true},{"text":"|","color":"black","bold":true}," "]'}
execute as @e[tag=healthbar] at @s if score @e[tag=enemy,sort=nearest,limit=1] php matches 80..89 run data merge entity @s {background:-1775687383,text:'[" ",{"score":{"name":"@e[tag=enemy,sort=nearest,limit=1]","objective":"hp"},"color":"red"}," ",{"text":"||||||||","color":"red","bold":true},{"text":"||","color":"black","bold":true}," "]'}
execute as @e[tag=healthbar] at @s if score @e[tag=enemy,sort=nearest,limit=1] php matches 70..79 run data merge entity @s {background:-1775687383,text:'[" ",{"score":{"name":"@e[tag=enemy,sort=nearest,limit=1]","objective":"hp"},"color":"red"}," ",{"text":"|||||||","color":"red","bold":true},{"text":"|||","color":"black","bold":true}," "]'}
execute as @e[tag=healthbar] at @s if score @e[tag=enemy,sort=nearest,limit=1] php matches 60..69 run data merge entity @s {background:-1775687383,text:'[" ",{"score":{"name":"@e[tag=enemy,sort=nearest,limit=1]","objective":"hp"},"color":"red"}," ",{"text":"||||||","color":"red","bold":true},{"text":"||||","color":"black","bold":true}," "]'}
execute as @e[tag=healthbar] at @s if score @e[tag=enemy,sort=nearest,limit=1] php matches 50..59 run data merge entity @s {background:-1775687383,text:'[" ",{"score":{"name":"@e[tag=enemy,sort=nearest,limit=1]","objective":"hp"},"color":"red"}," ",{"text":"|||||","color":"red","bold":true},{"text":"|||||","color":"black","bold":true}," "]'}
execute as @e[tag=healthbar] at @s if score @e[tag=enemy,sort=nearest,limit=1] php matches 40..49 run data merge entity @s {background:-1775687383,text:'[" ",{"score":{"name":"@e[tag=enemy,sort=nearest,limit=1]","objective":"hp"},"color":"red"}," ",{"text":"||||","color":"red","bold":true},{"text":"||||||","color":"black","bold":true}," "]'}
execute as @e[tag=healthbar] at @s if score @e[tag=enemy,sort=nearest,limit=1] php matches 30..39 run data merge entity @s {background:-1775687383,text:'[" ",{"score":{"name":"@e[tag=enemy,sort=nearest,limit=1]","objective":"hp"},"color":"red"}," ",{"text":"|||","color":"red","bold":true},{"text":"|||||||","color":"black","bold":true}," "]'}
execute as @e[tag=healthbar] at @s if score @e[tag=enemy,sort=nearest,limit=1] php matches 20..29 run data merge entity @s {background:-1775687383,text:'[" ",{"score":{"name":"@e[tag=enemy,sort=nearest,limit=1]","objective":"hp"},"color":"red"}," ",{"text":"||","color":"red","bold":true},{"text":"||||||||","color":"black","bold":true}," "]'}
execute as @e[tag=healthbar] at @s if score @e[tag=enemy,sort=nearest,limit=1] php matches 10..19 run data merge entity @s {background:-1775687383,text:'[" ",{"score":{"name":"@e[tag=enemy,sort=nearest,limit=1]","objective":"hp"},"color":"red"}," ",{"text":"|","color":"red","bold":true},{"text":"|||||||||","color":"black","bold":true}," "]'}
execute as @e[tag=healthbar] at @s if score @e[tag=enemy,sort=nearest,limit=1] php matches ..9 run data merge entity @s {background:-1775687383,text:'[" ",{"score":{"name":"@e[tag=enemy,sort=nearest,limit=1]","objective":"hp"},"color":"red"}," ",{"text":"","color":"red","bold":true},{"text":"||||||||||","color":"black","bold":true}," "]'}
