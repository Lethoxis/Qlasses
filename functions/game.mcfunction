

function code:interactions/tick
function code:effects/tick

################################################# Other #################################################
execute if entity @a[tag=!hasId] run function code:units/set_player_id

################################################# Health #################################################
execute if entity @e[type=text_display,tag=damage] run function code:units/health/textdamage




################################################# Spells #################################################
function code:spells/tick

scoreboard players add @e[tag=hasLife] life 1
kill @e[scores={life=1000..}]





################################################# Click #################################################
scoreboard players set @e[scores={lc=1..}] lc 0
scoreboard players set @e[scores={rc=1..}] rc 0




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