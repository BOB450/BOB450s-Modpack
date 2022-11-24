#=- Essentials -=#
execute at @e[tag=belephant] unless entity @e[distance=0,nbt={Motion:[0.0,0.0,0.0]},tag=belephant] run tag @e[tag=bemod,distance=..1] add moving
effect give @e[tag=belephant] minecraft:invisibility 1 1 true
execute at @e[tag=belephant] unless entity @e[tag=bemod,distance=..1] run summon armor_stand ~ ~ ~ {HasVisualFire:0b,ShowArms:1b,Small:1b,Invisible:1b,Tags:["bemod"],Pose:{LeftArm:[0.0001f,0f,0f],RightArm:[0.0001f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:allium",Count:1b,tag:{CustomModelData:7576912}},{}]}
execute at @e[tag=bemod] if entity @e[tag=belephant,distance=..0] run tag @e[tag=bemod,distance=0,nbt={Motion:[0.0,0.0,0.0]}] remove moving
execute at @e[tag=bemod] unless entity @e[tag=belephant,distance=..1] run kill @e[type=minecraft:armor_stand,limit=1,sort=nearest]
execute as @e[tag=bemod] run execute unless entity @s[tag=moving] run item replace entity @s[tag=bemod] weapon.mainhand with allium{CustomModelData:7576912} 1
execute at @e[tag=belephant] run tp @e[tag=bemod,limit=1,sort=nearest] @e[tag=belephant,limit=1,sort=nearest]
item replace entity @e[tag=moving,tag=bemod] weapon.mainhand with allium{CustomModelData:75671283} 1
data merge entity @e[type=polar_bear,limit=1,sort=random,tag=belephant,nbt={Age:-5000}] {Silent:1b,DeathLootTable:"-1",Team:"friendly",Health:40f,Age:0,Tags:["elephant"],Attributes:[{Name:generic.movement_speed,Base:0.22}]}
data merge entity @e[type=polar_bear,limit=1,sort=random,tag=belephant,nbt={Age:-4998}] {Silent:1b,DeathLootTable:"-1",Team:"friendly",Health:40f,Age:0,Tags:["elephant"],Attributes:[{Name:generic.movement_speed,Base:0.22}]}
data merge entity @e[type=polar_bear,limit=1,sort=random,tag=belephant,nbt={Age:-4999}] {Silent:1b,DeathLootTable:"-1",Team:"friendly",Health:40f,Age:0,Tags:["elephant"],Attributes:[{Name:generic.movement_speed,Base:0.22}]}