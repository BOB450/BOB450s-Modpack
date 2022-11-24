
#=- Essentials -=#

effect give @e[tag=ostrich] minecraft:invisibility 1 1 true
execute as @e[tag=ostrich] run execute unless entity @s[nbt={Motion:[0.0,0.0,0.0]},tag=ostrich] run tag @s[tag=ostrich] add moving
tag @e[tag=ostrich,nbt={Motion:[0.0,0.0,0.0]}] remove moving
item replace entity @e[tag=moving,tag=ostrich] armor.head with orange_tulip{CustomModelData:832973462} 1
execute as @e[tag=ostrich] run execute unless entity @s[tag=moving] run item replace entity @s[tag=ostrich] armor.head with orange_tulip{CustomModelData:51783882} 1

#=- Spawning -=#

execute at @e[type=cow,tag=!spawn] unless entity @a[distance=..30] if block ~ ~5 ~ acacia_leaves[persistent=false] run tag @e[type=cow,distance=..15,limit=3] add opicked
execute at @e[tag=opicked,tag=!spawn,limit=2] unless entity @e[tag=ostrich,distance=..1] run summon zombified_piglin ~ ~ ~ {Silent:1b,CustomNameVisible:0b,DeathLootTable:"-1",PersistenceRequired:1b,CanPickUpLoot:1b,Health:20f,IsBaby:0b,CanBreakDoors:0b,Tags:["ostrich"],CustomName:'{"text":"Ostrich","italic":false}',HandItems:[{id:"minecraft:air",Count:1b},{}],ArmorItems:[{id:"minecraft:feather",Count:1b},{id:"minecraft:feather",Count:1b},{id:"minecraft:feather",Count:2b},{id:"minecraft:orange_tulip",Count:1b,tag:{CustomModelData:51783882}}],ArmorDropChances:[0.250F,0.500F,1.000F,-327.670F],Attributes:[{Name:generic.follow_range,Base:100},{Name:generic.attack_damage,Base:5},{Name:generic.attack_knockback,Base:1.3},{Name:generic.movement_speed,Base:0.3}]}
execute at @e[tag=opicked,tag=!spawn,limit=2] unless entity @e[tag=bostrich,distance=..1] run summon zombified_piglin ~ ~ ~ {Silent:1b,DeathLootTable:"-1",PersistenceRequired:1b,CanPickUpLoot:0b,Health:5f,IsBaby:1b,CanBreakDoors:0b,Tags:["bostrich"],HandItems:[{id:"minecraft:air",Count:1b},{}],ArmorItems:[{},{id:"minecraft:feather",Count:1b},{},{id:"minecraft:orange_tulip",Count:1b,tag:{CustomModelData:472817472894}}],ArmorDropChances:[0.085F,1.000F,0.085F,-327.670F]}
tag @e[tag=opicked] add spawn