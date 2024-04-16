####################### Spell codes ######################
# Mage
# 0-99 Fire
# 100-199 Earth
# 200-299 Water
# 300-399 Lightning
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
execute if entity @a[scores={cast=6}] run function code:spells/mage/hellfire_shackles/cast

execute if entity @a[scores={cast=100}] run function code:spells/mage/amethyst_shards/cast
execute if entity @a[scores={cast=101}] run function code:spells/mage/amethyst_storm/cast
execute if entity @a[scores={cast=102}] run function code:spells/mage/amethyst_heart/cast
execute if entity @a[scores={cast=103}] run function code:spells/mage/geode_bomb/cast
execute if entity @a[scores={cast=104}] run function code:spells/mage/stonefall_deluge/cast
execute if entity @a[scores={cast=105}] run function code:spells/mage/earthwall/cast
execute if entity @a[scores={cast=106}] run function code:spells/mage/gemfire_beam/cast
execute if entity @a[scores={cast=107}] run function code:spells/mage/interstellar_comet/cast

execute if entity @a[scores={cast=200}] run function code:spells/mage/wave/cast
execute if entity @a[scores={cast=201}] run function code:spells/mage/splashback/cast
execute if entity @a[scores={cast=202}] run function code:spells/mage/siphon/cast
execute if entity @a[scores={cast=203}] run function code:spells/mage/tsunami/cast
execute if entity @a[scores={cast=204}] run function code:spells/mage/geyser/cast
execute if entity @a[scores={cast=205}] run function code:spells/mage/twinstream/cast
execute if entity @a[scores={cast=206}] run function code:spells/mage/aquabomb/cast
execute if entity @a[scores={cast=207}] run function code:spells/mage/life_spring/cast
execute if entity @a[scores={cast=208}] run function code:spells/mage/bubble_bind/cast
execute if entity @a[scores={cast=209}] run function code:spells/mage/diamond_waters/cast

execute if entity @a[scores={cast=300}] run function code:spells/mage/jolt/cast
execute if entity @a[scores={cast=301}] run function code:spells/mage/thundersurge/cast
execute if entity @a[scores={cast=302}] run function code:spells/mage/flash/cast
execute if entity @a[scores={cast=303}] run function code:spells/mage/blitz_dash/cast


########################## CD ##########################
execute as @a[scores={lc=1..},nbt={SelectedItemSlot:0}] unless score @s autocd matches 1.. run scoreboard players operation @s autocd = @s autoCD
execute as @a[scores={rc=1..},nbt={SelectedItemSlot:0}] unless score @s spell1cd matches 1.. run scoreboard players operation @s spell1cd = @s spell1CD
execute as @a[scores={rc=1..},nbt={SelectedItemSlot:1}] unless score @s spell2cd matches 1.. run scoreboard players operation @s spell2cd = @s spell2CD
execute as @a[scores={rc=1..},nbt={SelectedItemSlot:2}] unless score @s spell3cd matches 1.. run scoreboard players operation @s spell3cd = @s spell3CD
execute as @a[scores={rc=1..},nbt={SelectedItemSlot:3}] unless score @s spell4cd matches 1.. run scoreboard players operation @s spell4cd = @s spell4CD





scoreboard players set @a[scores={cast=0..}] cast -1
