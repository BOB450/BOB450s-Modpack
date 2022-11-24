#=- Essentials -=#
item replace entity @e[tag=moving,tag=shmod] armor.head with minecraft:glowstone_dust{CustomModelData:54724} 1
execute at @e[tag=shrew] run tp @e[tag=shmod,limit=1,sort=nearest] @e[tag=shrew,limit=1,sort=nearest]
execute at @e[tag=shmod] if entity @e[tag=shrew,nbt={Motion:[0.0,0.0,0.0]},distance=..0.5] run tag @e[tag=shmod,distance=0] remove moving
execute at @e[tag=shmod] unless entity @e[tag=shrew,distance=..1] run kill @e[type=minecraft:armor_stand,limit=1,sort=nearest]
execute at @e[tag=shrew] unless entity @e[tag=shmod,distance=..1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,HasVisualFire:0b,Small:1b,Invisible:1b,Tags:["shmod"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:red_tulip",Count:1b,tag:{CustomModelData:473828468}}]}
execute as @e[tag=shmod] run execute unless entity @s[tag=moving] run item replace entity @s[tag=shmod] armor.head with minecraft:red_tulip{CustomModelData:473828468} 1
effect give @e[tag=shrew] minecraft:invisibility 1 1 true
execute at @e[tag=shrew] unless entity @e[distance=0,nbt={Motion:[0.0,0.0,0.0]},tag=shrew] run tag @e[tag=shmod,distance=..1] add moving

#=- Spawning -=#
execute at @e[type=spider,tag=!spawn] unless entity @a[distance=..30] if block ~ ~7 ~ acacia_leaves[persistent=false] run tag @e[type=spider,limit=5,sort=nearest] add shpicked
execute at @e[tag=shpicked,tag=!spawn,limit=4,sort=random] unless entity @e[tag=shrew,distance=..1] run summon fox ~ ~ ~ {Silent:1b,DeathLootTable:"-1",CanPickUpLoot:0b,Health:2f,Age:-10000,Tags:["shrew"],Attributes:[{Name:generic.max_health,Base:2}]}
tag @e[tag=shpicked] add spawn