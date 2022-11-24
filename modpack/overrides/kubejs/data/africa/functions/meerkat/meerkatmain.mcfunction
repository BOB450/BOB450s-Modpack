#=- Essentials -=#
execute at @e[tag=meer] run tp @e[tag=mmod,limit=1,sort=nearest] @e[tag=meer,limit=1,sort=nearest]
execute as @e[tag=mmod] run execute unless entity @s[tag=moving] run item replace entity @s[tag=mmod] weapon.mainhand with minecraft:oxeye_daisy{CustomModelData:989294} 1
effect give @e[tag=meer] minecraft:invisibility 1 1 true
item replace entity @e[tag=moving,tag=mmod] weapon.mainhand with minecraft:oxeye_daisy{CustomModelData:6723937} 1
execute at @e[tag=mmod] unless entity @e[tag=meer,distance=..1] run kill @e[type=minecraft:armor_stand,limit=1,sort=nearest]
execute at @e[tag=meer] unless entity @e[distance=0,nbt={Motion:[0.0,0.0,0.0]},tag=meer] run tag @e[tag=mmod,distance=..1] add moving
execute at @e[tag=mmod] if entity @e[tag=meer,nbt={Motion:[0.0,0.0,0.0]},distance=..0.2] run tag @e[tag=mmod,distance=0] remove moving
execute at @e[tag=meer] unless entity @e[tag=mmod,distance=..1] unless entity @e[tag=burrow,distance=0] run summon armor_stand ~ ~ ~ {Small:1b,Invulnerable:1b,HasVisualFire:0b,ShowArms:1b,Invisible:1b,Tags:["mmod"],Pose:{LeftArm:[0.1f,0f,0f],RightArm:[0.1f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:oxeye_daisy",Count:1b,tag:{CustomModelData:989294}},{}]}

#=- Spawning -=#
execute at @e[type=chicken,tag=!spawn] unless entity @a[distance=..30] if block ~ ~7 ~ acacia_leaves[persistent=false] run tag @e[type=chicken,distance=..25] add mpicked
execute at @e[tag=mpicked,tag=!spawn] unless entity @e[tag=meer,distance=..1] run summon ocelot ~ ~ ~ {Silent:1b,DeathLootTable:"-1",Health:3f,Tags:["meer"],Attributes:[{Name:generic.movement_speed,Base:0.3}]}
tag @e[tag=mpicked,tag=!spawn] add spawn

#=- Burrowing -=#
tag @e[tag=meer,nbt={HurtTime:10s},tag=!burrow] add burrow
effect give @e[tag=burrow] slowness 1 2 true
execute at @e[tag=burrow] run particle block coarse_dirt ~ ~ ~ 0 0 0 0.5 10 force
execute at @e[tag=burrow] if entity @e[tag=mmod,distance=..1] run kill @e[tag=mmod,limit=1,sort=nearest]
execute at @e[tag=burrow] if block ~ ~-1 ~ air run tag @e[tag=meer,tag=burrow] remove burrow

#=- Eating -=#
execute at @e[tag=meer] if entity @e[type=item,nbt={Item:{id:"minecraft:chicken",Count:1b}},distance=..1] run function africa:meerkat/eat