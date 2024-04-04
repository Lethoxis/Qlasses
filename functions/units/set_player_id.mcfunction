
execute unless score #id id matches 0.. run scoreboard players set #id id 0
scoreboard players add #id id 1

scoreboard players set @p[tag=!hasId] id 0
tag @a[tag=!hasId,scores={id=0}] add hasId
scoreboard players operation @a[scores={id=0}] id = #id id
