
########################## Tick ##########################
## Mage
execute if entity @e[tag=projectile,tag=fireball] run function code:spells/mage/fireball/tick
execute if entity @e[tag=projectile,tag=volcano] run function code:spells/mage/volcano/tick
execute if entity @e[tag=projectile,tag=campfire] run function code:spells/mage/campfire/tick
execute if entity @e[tag=projectile,tag=blaze_rampart] run function code:spells/mage/blaze_rampart/tick
execute if entity @e[tag=projectile,tag=pyrotectonics] run function code:spells/mage/pyrotectonics/tick
execute if entity @e[tag=pyrotectonics_erupt] run function code:spells/mage/pyrotectonics/erupt
execute if entity @e[tag=emberling] run function code:spells/mage/emberling/tick
execute if entity @e[tag=projectile,tag=hellfire_shackles] run function code:spells/mage/hellfire_shackles/tick

execute if entity @e[tag=projectile,tag=amethyst_shards] run function code:spells/mage/amethyst_shards/tick
execute if entity @e[tag=projectile,tag=amethyst_storm] run function code:spells/mage/amethyst_storm/tick
execute if entity @e[tag=projectile,tag=amethyst_storm_shard] run function code:spells/mage/amethyst_storm/tick_shard
execute if entity @e[tag=projectile,tag=amethyst_heart] run function code:spells/mage/amethyst_heart/tick
execute if entity @e[tag=projectile,tag=amethyst_heart_beat] run function code:spells/mage/amethyst_heart/tick_beat
execute if entity @e[tag=projectile,tag=geode_bomb] run function code:spells/mage/geode_bomb/tick
execute if entity @e[tag=projectile,tag=stonefall_deluge] run function code:spells/mage/stonefall_deluge/tick
execute if entity @e[tag=projectile,tag=stonefall_deluge_stone] run function code:spells/mage/stonefall_deluge/tick_stone
execute if entity @e[tag=projectile,tag=earthwall] run function code:spells/mage/earthwall/tick
execute if entity @e[tag=projectile,tag=gemfire_beam] run function code:spells/mage/gemfire_beam/tick
execute if entity @e[tag=projectile,tag=interstellar_comet,tag=!going] run function code:spells/mage/interstellar_comet/channel
execute if entity @e[tag=projectile,tag=interstellar_comet,tag=going] run function code:spells/mage/interstellar_comet/tick
execute if entity @e[tag=projectile,tag=terra_spikes] run function code:spells/mage/terra_spikes/tick
execute if entity @e[tag=projectile,tag=terra_spikes_spike] run function code:spells/mage/terra_spikes/tick_spike
execute if entity @e[tag=projectile,tag=himalaya] run function code:spells/mage/himalaya/tick
execute if entity @e[tag=projectile,tag=himalaya_instance] run function code:spells/mage/himalaya/tick_instance
execute if entity @e[tag=projectile,tag=vesuvius] run function code:spells/mage/vesuvius/tick
execute if entity @e[tag=projectile,tag=vesuvius_instance] run function code:spells/mage/vesuvius/tick_instance
execute if entity @e[tag=projectile,tag=fuji] run function code:spells/mage/fuji/tick

execute if entity @e[tag=projectile,tag=wave] run function code:spells/mage/wave/tick
execute if entity @e[tag=projectile,tag=splashback] run function code:spells/mage/splashback/tick
execute if entity @e[tag=projectile,tag=siphon] run function code:spells/mage/siphon/tick
execute if entity @e[tag=projectile,tag=siphon_effect] run function code:spells/mage/siphon/tick_effect
execute if entity @e[tag=projectile,tag=tsunami,tag=!going] run function code:spells/mage/tsunami/channel
execute if entity @e[tag=projectile,tag=tsunami,tag=going] run function code:spells/mage/tsunami/tick
execute if entity @e[tag=projectile,tag=geyser] run function code:spells/mage/geyser/tick
execute if entity @e[tag=projectile,tag=geyser_instance] run function code:spells/mage/geyser/tick_instance
execute if entity @e[tag=projectile,tag=twinstream] run function code:spells/mage/twinstream/tick
execute if entity @a[tag=aquabombing] run function code:spells/mage/aquabomb/tick
execute if entity @e[tag=projectile,tag=life_spring] run function code:spells/mage/life_spring/tick
execute if entity @e[tag=projectile,tag=life_spring_effect] run function code:spells/mage/life_spring/tick_effect
execute if entity @e[tag=projectile,tag=bubble_bind] run function code:spells/mage/bubble_bind/tick
execute if entity @e[tag=projectile,tag=diamond_waters] run function code:spells/mage/diamond_waters/tick
execute if entity @e[tag=projectile,tag=diamond_waters_instance] run function code:spells/mage/diamond_waters/tick_instance

execute if entity @e[tag=projectile,tag=jolt] run function code:spells/mage/jolt/tick
execute if entity @e[tag=projectile,tag=thundersurge] run function code:spells/mage/thundersurge/tick
execute if entity @e[tag=projectile,tag=blitz_dash] run function code:spells/mage/blitz_dash/tick
execute if entity @e[scores={notch=1..}] run function code:spells/mage/notch/tick
execute if entity @e[tag=last_notch_lightning] run function code:spells/mage/notch/last_lightning_step


## Swordsman
execute if entity @e[tag=projectile,tag=enchanted_path] run function code:spells/swordsman/enchanted_path/tick
execute if entity @e[tag=!projectile,tag=enchanted_path] run function code:spells/swordsman/enchanted_path/tick_carpet


########################## CD ##########################
scoreboard players remove @a[scores={autocd=1..}] autocd 1
scoreboard players remove @a[scores={spell1cd=1..}] spell1cd 1
scoreboard players remove @a[scores={spell2cd=1..}] spell2cd 1
scoreboard players remove @a[scores={spell3cd=1..}] spell3cd 1
scoreboard players remove @a[scores={spell4cd=1..}] spell4cd 1
