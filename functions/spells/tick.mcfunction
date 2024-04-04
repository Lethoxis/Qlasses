
########################## Cast ##########################
execute if entity @a[tag=fireball,nbt={SelectedItemSlot:0},scores={lc=1..}] run function code:spells/mage/fireball/cast
execute if entity @a[tag=volcano,nbt={SelectedItemSlot:0},scores={lc=1..}] run function code:spells/mage/volcano/cast
execute if entity @a[tag=amethyst_shards,nbt={SelectedItemSlot:0},scores={lc=1..}] run function code:spells/mage/amethyst_shards/cast
execute if entity @a[tag=amethyst_storm,nbt={SelectedItemSlot:0},scores={lc=1..}] run function code:spells/mage/amethyst_storm/cast


########################## Tick ##########################
execute if entity @e[tag=projectile,tag=fireball] run function code:spells/mage/fireball/tick
execute if entity @e[tag=volcano] run function code:spells/mage/volcano/tick
execute if entity @e[tag=projectile,tag=amethyst_shards] run function code:spells/mage/amethyst_shards/tick
execute if entity @e[tag=projectile,tag=amethyst_storm] run function code:spells/mage/amethyst_storm/tick
execute if entity @e[tag=projectile,tag=amethyst_storm_shard] run function code:spells/mage/amethyst_storm/tick_shard
