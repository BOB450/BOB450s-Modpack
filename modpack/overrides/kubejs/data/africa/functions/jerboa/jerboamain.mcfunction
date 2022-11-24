#=- Essentials -=#
execute at @e[tag=jerboa] unless entity @e[tag=jmod,distance=..1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,HasVisualFire:0b,ShowArms:1b,Small:1b,Invisible:1b,Tags:["jmod"],Pose:{LeftArm:[0.0001f,0f,0f],RightArm:[0.0001f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:orange_tulip",Count:1b,tag:{CustomModelData:523890}},{}]}
execute at @e[tag=jmod] unless entity @e[tag=jerboa,distance=..1] run kill @e[type=minecraft:armor_stand,limit=1,sort=nearest]
execute at @e[tag=jerboa] run tp @e[tag=jmod,limit=1,sort=nearest] @e[tag=jerboa,limit=1,sort=nearest]
effect give @e[tag=jerboa] invisibility 1 1 true
execute at @e[tag=jmod] if block ~ ~-0.2 ~ air run item replace entity @e[tag=jmod,limit=1,sort=nearest] weapon.mainhand with orange_tulip{CustomModelData:5235174} 1
execute at @e[tag=jmod] unless block ~ ~-0.1 ~ air run item replace entity @e[tag=jmod,limit=1,sort=nearest] weapon.mainhand with orange_tulip{CustomModelData:523890} 1
execute at @e[tag=jmod] if block ~ ~-0.2 ~ grass run item replace entity @e[tag=jmod,limit=1,sort=nearest] weapon.mainhand with orange_tulip{CustomModelData:5235174} 1


#=- Spawning -=#
execute at @e[type=sheep,tag=!spawn] unless entity @a[distance=..30] if block ~ ~7 ~ acacia_leaves[persistent=false] run tag @e[type=sheep,distance=..25] add jpicked
execute at @e[tag=jpicked,tag=!spawn] unless entity @e[tag=jerboa,distance=..1] run summon rabbit ~ ~ ~ {Silent:1b,DeathLootTable:"-1",Health:2f,Tags:["jerboa"],ArmorItems:[{},{id:"minecraft:rabbit_foot",Count:1b,tag:{display:{Name:'{"text":"Jerboa Tail","italic":false}',Lore:['{"text":"Substitute for a Rabbit\'s Foot","color":"dark_gray","italic":false}']},CustomModelData:54226732}},{},{}],ArmorDropChances:[0.085F,0.250F,0.085F,0.085F]}
tag @e[tag=jpicked,tag=!spawn] add spawn

#=- Eating -=#
execute at @e[tag=jerboa] if block ~ ~ ~ poppy run function africa:jerboa/eat