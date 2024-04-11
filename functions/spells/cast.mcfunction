####################### Spell codes ######################
# Mage
# 0-9 Fire
# 10-19 Earth
# 20-29 Water
# 30-39 Lightning
# 
# 
# 
# 
# 
# 

########################## Cast ##########################
execute if entity @a[scores={cast=0}] run function code:spells/mage/fireball/cast
execute if entity @a[scores={cast=1}] run function code:spells/mage/volcano/cast
execute if entity @a[scores={cast=2}] run function code:spells/mage/campfire/cast
execute if entity @a[scores={cast=3}] run function code:spells/mage/blaze_rampart/cast
execute if entity @a[scores={cast=4}] run function code:spells/mage/pyrotectonics/cast
execute if entity @a[scores={cast=5}] run function code:spells/mage/emberling/cast

execute if entity @a[scores={cast=10}] run function code:spells/mage/amethyst_shards/cast
execute if entity @a[scores={cast=11}] run function code:spells/mage/amethyst_storm/cast
execute if entity @a[scores={cast=12}] run function code:spells/mage/amethyst_heart/cast
execute if entity @a[scores={cast=13}] run function code:spells/mage/geode_bomb/cast
execute if entity @a[scores={cast=14}] run function code:spells/mage/stonefall_deluge/cast
execute if entity @a[scores={cast=15}] run function code:spells/mage/earthwall/cast
execute if entity @a[scores={cast=16}] run function code:spells/mage/gemfire_beam/cast
execute if entity @a[scores={cast=17}] run function code:spells/mage/interstellar_comet/cast

execute if entity @a[scores={cast=20}] run function code:spells/mage/wave/cast
execute if entity @a[scores={cast=21}] run function code:spells/mage/splashback/cast
execute if entity @a[scores={cast=22}] run function code:spells/mage/siphon/cast
execute if entity @a[scores={cast=23}] run function code:spells/mage/tsunami/cast

execute if entity @a[scores={cast=30}] run function code:spells/mage/jolt/cast
execute if entity @a[scores={cast=31}] run function code:spells/mage/thundersurge/cast


########################## CD ##########################
execute as @a[scores={lc=1..},nbt={SelectedItemSlot:0}] unless score @s autocd matches 1.. run scoreboard players operation @s autocd = @s autoCD
execute as @a[scores={rc=1..},nbt={SelectedItemSlot:0}] unless score @s spell1cd matches 1.. run scoreboard players operation @s spell1cd = @s spell1CD
execute as @a[scores={lc=1..},nbt={SelectedItemSlot:1}] unless score @s spell2cd matches 1.. run scoreboard players operation @s spell2cd = @s spell2CD
execute as @a[scores={rc=1..},nbt={SelectedItemSlot:1}] unless score @s spell3cd matches 1.. run scoreboard players operation @s spell3cd = @s spell3CD
execute as @a[scores={lc=1..},nbt={SelectedItemSlot:2}] unless score @s spell4cd matches 1.. run scoreboard players operation @s spell4cd = @s spell4CD





scoreboard players set @a[scores={cast=1..}] cast -1
scoreboard players set @a[scores={lc=1..}] lc 0
scoreboard players set @a[scores={rc=1..}] rc 0
