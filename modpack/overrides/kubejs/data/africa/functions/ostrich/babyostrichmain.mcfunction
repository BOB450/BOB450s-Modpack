
#=- Essentials -=#

effect give @e[tag=bostrich] minecraft:invisibility 1 1 true
execute as @e[tag=bostrich] run execute unless entity @s[nbt={Motion:[0.0,0.0,0.0]},tag=bostrich] run tag @s[tag=bostrich] add moving
tag @e[tag=bostrich,nbt={Motion:[0.0,0.0,0.0]}] remove moving
item replace entity @e[tag=moving,tag=bostrich] armor.head with red_tulip{CustomModelData:1648234} 1
execute as @e[tag=bostrich] run execute unless entity @s[tag=moving] run item replace entity @s[tag=bostrich] armor.head with red_tulip{CustomModelData:47281747} 1