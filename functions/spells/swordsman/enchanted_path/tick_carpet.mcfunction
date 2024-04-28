
###### Player on carpet
# Petals
execute as @a[scores={auto=1900},nbt={active_effects:[{id:"minecraft:regeneration"}]}] run effect give @s speed 1 1 true
execute as @a[scores={auto=1900,autocd=1..},nbt={active_effects:[{id:"minecraft:regeneration"}]}] run scoreboard players remove @s autocd 1
effect clear @a[scores={auto=1900},nbt={active_effects:[{id:"minecraft:regeneration"}]}] regeneration

# Star
execute as @a[scores={auto=1901,autocd=6..},nbt={active_effects:[{id:"minecraft:regeneration"}]}] run scoreboard players remove @s autocd 1
