#=- Essentials -=#
item replace entity @e[tag=moving,tag=lmod] weapon.mainhand with minecraft:oxeye_daisy{CustomModelData:87982} 1
execute at @e[tag=lion] run tp @e[tag=lmod,limit=1,sort=nearest] @e[tag=lion,limit=1,sort=nearest]
execute at @e[tag=lmod] if entity @e[tag=lion,nbt={Motion:[0.0,0.0,0.0]},distance=..0.5] run tag @e[tag=lmod,distance=0] remove moving
execute at @e[tag=lmod] unless entity @e[tag=lion,distance=..1] run kill @e[type=minecraft:armor_stand,limit=1,sort=nearest]
execute at @e[tag=lion] unless entity @e[tag=lmod,distance=..1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,HasVisualFire:0b,ShowArms:1b,Invisible:1b,Tags:["lmod"],Pose:{LeftArm:[0.1f,0f,0f],RightArm:[0.1f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:oxeye_daisy",Count:1b,tag:{CustomModelData:87182}},{}]}
execute as @e[tag=lmod] run execute unless entity @s[tag=moving] run item replace entity @s[tag=lmod] weapon.mainhand with minecraft:oxeye_daisy{CustomModelData:87182} 1
effect give @e[tag=lion] minecraft:invisibility 1 1 true
execute at @e[tag=lion] unless entity @e[distance=0,nbt={Motion:[0.0,0.0,0.0]},tag=lion] run tag @e[tag=lmod,distance=..1] add moving

#=- Spawning -=#
execute at @e[type=pig,tag=!spawn] unless entity @a[distance=..30] if block ~ ~7 ~ acacia_leaves[persistent=false] run tag @e[type=pig,limit=25,sort=nearest] add lpicked
execute at @e[tag=lpicked,tag=!spawn,limit=1,sort=random] unless entity @e[tag=lion,distance=..1] run summon husk ~ ~ ~ {PersistenceRequired:1b,Silent:1b,CustomNameVisible:0b,DeathLootTable:"-1",CanPickUpLoot:0b,Health:15f,IsBaby:0b,CanBreakDoors:0b,Tags:["lion"],CustomName:'{"text":"Lion"}',ArmorItems:[{id:"minecraft:leather",Count:1b},{id:"minecraft:leather",Count:1b},{},{}],ArmorDropChances:[0.500F,1.000F,0.085F,0.085F],Attributes:[{Name:generic.follow_range,Base:5},{Name:generic.knockback_resistance,Base:0.25},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:6}]}
tag @e[tag=lpicked] add spawn