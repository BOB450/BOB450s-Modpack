
#=- Essentials -=#

execute at @e[tag=elephant] unless entity @e[distance=0,nbt={Motion:[0.0,0.0,0.0]},tag=elephant] run tag @e[tag=emod,distance=..1] add moving
effect give @e[tag=elephant] minecraft:invisibility 1 1 true
execute at @e[tag=elephant] unless entity @e[tag=emod,distance=..1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,HasVisualFire:0b,ShowArms:1b,Invisible:1b,Tags:["emod"],Pose:{LeftArm:[0.1f,0f,0f],RightArm:[0.1f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:allium",Count:1b,tag:{CustomModelData:756346}},{}]}
item replace entity @e[tag=moving,tag=emod,tag=!eating] weapon.mainhand with allium{CustomModelData:758794} 1
execute at @e[tag=emod] if entity @e[tag=elephant,distance=..0] run tag @e[tag=emod,distance=0] remove moving
execute at @e[tag=emod] unless entity @e[tag=elephant,distance=..1] run kill @e[type=minecraft:armor_stand,limit=1,sort=nearest]
execute as @e[tag=emod] run execute unless entity @s[tag=moving] run item replace entity @s[tag=emod,tag=!eating] weapon.mainhand with allium{CustomModelData:756346} 1
execute at @e[tag=elephant] run tp @e[tag=emod,limit=1,sort=nearest] @e[tag=elephant,limit=1,sort=nearest]


#=- Spawning -=#

execute at @e[type=cow,tag=!spawn] unless entity @a[distance=..30] if block ~ ~7 ~ acacia_leaves[persistent=false] run tag @e[type=cow,distance=..15,limit=4] add epicked
execute at @e[tag=epicked,tag=!spawn,limit=3] unless entity @e[tag=elephant,distance=..1] run summon polar_bear ~ ~ ~ {Attributes:[{Name:generic.movement_speed,Base:0.22}],Silent:1b,DeathLootTable:"-1",Team:"friendly",Health:40f,Tags:["elephant"]}
execute at @e[tag=epicked,tag=!spawn,limit=3] unless entity @e[tag=belephant,distance=..1] run summon polar_bear ~ ~ ~ {Silent:1b,DeathLootTable:"-1",Team:"friendly",Health:15f,Age:-20000,Tags:["belephant"]}
tag @e[tag=epicked] add spawn


#=- Eating -=#

execute at @e[tag=elephant,tag=!eating,tag=!hasEaten] if block ~ ~6 ~ acacia_leaves run function africa:elephant/elephanteat
scoreboard players add @e[tag=hasEaten] eAnimation 1
scoreboard players set @e[tag=!hasEaten] eAnimation 0
item replace entity @e[tag=emod,tag=eating] weapon.mainhand with allium{CustomModelData:757818934} 1
effect give @e[scores={eAnimation=1..120}] slowness 1 255 true
execute at @e[scores={eAnimation=120..}] run tag @e[tag=emod,tag=eating,limit=1,sort=nearest] remove eating
tag @e[scores={eAnimation=280..},tag=hasEaten] remove hasEaten