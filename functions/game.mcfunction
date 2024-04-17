

function code:interactions/tick
function code:effects/tick

################################################# Other #################################################
execute if entity @a[tag=!hasId] run function code:units/set_player_id

################################################# Health #################################################
execute if entity @e[type=text_display,tag=damage] run function code:units/health/textdamage




################################################# Spells #################################################
function code:spells/tick

execute as @a[tag=!channeling,scores={lc=1..},nbt={SelectedItemSlot:0}] unless score @s autocd matches 1.. run scoreboard players operation @s cast = @s auto
execute as @a[tag=!channeling,scores={rc=1..},nbt={SelectedItemSlot:0}] unless score @s spell1cd matches 1.. run scoreboard players operation @s cast = @s spell1
execute as @a[tag=!channeling,scores={rc=1..},nbt={SelectedItemSlot:1}] unless score @s spell2cd matches 1.. run scoreboard players operation @s cast = @s spell2
execute as @a[tag=!channeling,scores={rc=1..},nbt={SelectedItemSlot:2}] unless score @s spell3cd matches 1.. run scoreboard players operation @s cast = @s spell3
execute as @a[tag=!channeling,scores={rc=1..},nbt={SelectedItemSlot:3}] unless score @s spell4cd matches 1.. run scoreboard players operation @s cast = @s spell4
execute if entity @a[scores={cast=0..}] run function code:spells/cast

scoreboard players set @a[scores={lc=1..}] lc 0
scoreboard players set @a[scores={rc=1..}] rc 0
scoreboard players set @a[scores={sneak=1..}] sneak 0



scoreboard players add @e[tag=hasLife] life 1
kill @e[scores={life=1000..}]




######################## LIST OF TAGS ########################
# hasLife : will make an entity increase score life
# spawnProjectile with itemDisplay/blockDisplay : then trigger function player_spawn_projectile to create a AS/item display/block display projectile
# hasId : player has their ID initialized
# 
# passenger : all entities that are riding others must have this tag so they are deleted when the main entity dies
# projectile : spells
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 