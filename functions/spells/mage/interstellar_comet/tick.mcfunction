
function code:spells/mage/interstellar_comet/step
function code:spells/mage/interstellar_comet/step
function code:spells/mage/interstellar_comet/step
function code:spells/mage/interstellar_comet/step
function code:spells/mage/interstellar_comet/step
function code:spells/mage/interstellar_comet/step
function code:spells/mage/interstellar_comet/step


###### Death
execute at @e[tag=projectile,tag=interstellar_comet,scores={life=12..}] run kill @e[tag=projectile,tag=interstellar_comet_shell,sort=nearest,limit=1]
kill @e[tag=projectile,tag=interstellar_comet,scores={life=12..}]
