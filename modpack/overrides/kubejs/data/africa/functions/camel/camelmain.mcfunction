#=- Essentials -=#
item replace entity @e[tag=moving,tag=cmod] weapon.mainhand with minecraft:rabbit_foot{CustomModelData:63782} 1
execute at @e[tag=camel] run tp @e[tag=cmod,limit=1,sort=nearest] @e[tag=camel,limit=1,sort=nearest]
execute at @e[tag=cmod] if entity @e[tag=camel,nbt={Motion:[0.0,0.0,0.0]},distance=..0.5] run tag @e[tag=cmod,distance=0] remove moving
execute at @e[tag=cmod] unless entity @e[tag=camel,distance=..1] run kill @e[type=minecraft:armor_stand,limit=1,sort=nearest]
execute at @e[tag=camel] unless entity @e[tag=cmod,distance=..1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,HasVisualFire:0b,ShowArms:1b,Invisible:1b,Tags:["cmod"],Pose:{LeftArm:[0.1f,0f,0f],RightArm:[0.1f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:rabbot_foot",Count:1b,tag:{CustomModelData:238732332}},{}]}
execute as @e[tag=cmod] run execute unless entity @s[tag=moving] unless entity @s[tag=riding] run item replace entity @s[tag=cmod] weapon.mainhand with minecraft:rabbit_foot{CustomModelData:238732332} 1
effect give @e[tag=camel] minecraft:invisibility 1 1 true
execute at @e[tag=camel] unless entity @e[distance=0,nbt={Motion:[0.0,0.0,0.0]},tag=camel] run tag @e[tag=cmod,distance=..1] add moving
execute at @e[tag=camel] if entity @p[distance=..1.5] run effect give @e[tag=camel,limit=1,sort=nearest] minecraft:slowness 1 3 true
execute at @a run execute at @e[tag=camel,limit=1,sort=nearest,distance=..1.2] unless entity @p[distance=..1.2,nbt={Motion:[0.0,0.0,0.0]}] run tag @e[tag=cmod,limit=1,sort=nearest] add riding
execute at @e[tag=cmod,tag=riding] if entity @p[nbt={Motion:[0.0,0.0,0.0]}] run tag @e[tag=cmod,limit=1,sort=nearest] remove riding
item replace entity @e[tag=riding,tag=cmod] weapon.mainhand with minecraft:rabbit_foot{CustomModelData:792517} 1
execute at @e[tag=camel] unless entity @a[distance=..1.3] run tag @e[tag=cmod,limit=1,sort=nearest] remove riding

#=- Spawning -=#
execute at @e[type=rabbit,tag=!spawn] unless entity @a[distance=..30] if block ~ ~-1 ~ sand run tag @e[type=rabbit,limit=10,sort=nearest] add cpicked
execute at @e[tag=cpicked,tag=!spawn,limit=1,sort=random] unless entity @e[tag=camel,distance=..1] run summon donkey ~ ~ ~ {Silent:1b,CustomNameVisible:0b,DeathLootTable:"-1",Health:20f,Bred:1b,EatingHaystack:0b,Tame:1b,Temper:0,Tags:["camel"],CustomName:'{"text":"Camel"}',Attributes:[{Name:generic.max_health,Base:20},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:0.31},{Name:horse.jump_strength,Base:0}],ArmorItem:{id:"minecraft:air",Count:1b}}
tag @e[tag=cpicked] add spawn

#=- Milking -=#

execute at @e[type=item,nbt={Item:{id:"minecraft:bucket",Count:1b}}] if entity @e[tag=camel,distance=..0.5] run playsound block.honey_block.fall master @a ~ ~ ~ 0.6 0.5
execute at @e[type=item,nbt={Item:{id:"minecraft:bucket",Count:1b}}] if entity @e[tag=camel,distance=..0.5] run data merge entity @e[type=item,limit=1,sort=nearest] {Item:{id:"minecraft:milk_bucket",Count:1b,tag:{display:{Name:'{"text":"Camel Milk","italic":false}'}}}}