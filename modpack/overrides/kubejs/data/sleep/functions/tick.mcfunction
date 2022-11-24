#Desperar por bloques

execute if predicate sleep:time run execute as @e[type=horse] at @s run execute if block ~ ~ ~ water run data merge entity @s {Health:24.9f}
execute if predicate sleep:rain run execute if predicate sleep:time run execute as @e[type=horse,nbt={Health:25.0f}] at @s run data merge entity @s {Health:24.9f}
execute if predicate sleep:thunder run execute if predicate sleep:time run execute as @e[type=horse,nbt={Health:25.0f}] at @s run data merge entity @s {Health:24.9f}
execute if predicate sleep:time run execute as @e[type=horse,nbt={Health:25.0f}] at @s run execute if block ~ ~-0.6 ~ #sleep:sleep run data merge entity @s {Health:24.9f}
execute if predicate sleep:time run execute as @e[type=horse] at @s run execute if block ~ ~ ~ #minecraft:fire run data merge entity @s {Health:24.9f}

execute if predicate sleep:time run execute as @e[type=donkey] at @s run execute if block ~ ~ ~ water run data merge entity @s {Health:21.9f}
execute if predicate sleep:thunder run execute if predicate sleep:time run execute as @e[type=donkey,nbt={Health:22.0f}] at @s run data merge entity @s {Health:21.9f}
execute if predicate sleep:rain run execute if predicate sleep:time run execute as @e[type=donkey,nbt={Health:22.0f}] at @s run data merge entity @s {Health:21.9f}
execute if predicate sleep:time run execute as @e[type=donkey,nbt={Health:22.0f}] at @s run execute if block ~ ~-0.6 ~ #sleep:sleep run data merge entity @s {Health:21.9f}
execute if predicate sleep:time run execute as @e[type=donkey] at @s run execute if block ~ ~ ~ #minecraft:fire run data merge entity @s {Health:21.9f}

execute if predicate sleep:time run execute as @e[type=llama] at @s run execute if block ~ ~ ~ water run data merge entity @s {Health:23.9f}
execute if predicate sleep:rain run execute if predicate sleep:time run execute as @e[type=llama,nbt={Health:24.0f}] at @s run data merge entity @s {Health:23.9f}
execute if predicate sleep:thunder run execute if predicate sleep:time run execute as @e[type=llama,nbt={Health:24.0f}] at @s run data merge entity @s {Health:23.9f}
execute if predicate sleep:time run execute as @e[type=llama,nbt={Health:24.0f}] at @s run execute if block ~ ~-0.6 ~ #sleep:sleep run data merge entity @s {Health:23.9f}
execute if predicate sleep:time run execute as @e[type=llama] at @s run execute if block ~ ~ ~ #minecraft:fire run data merge entity @s {Health:23.9f}

execute if predicate sleep:thunder run execute if predicate sleep:time run execute as @e[type=trader_llama,nbt={Health:24.0f}] at @s run data merge entity @s {Health:23.9f}
execute if predicate sleep:rain run execute if predicate sleep:time run execute as @e[type=trader_llama,nbt={Health:24.0f}] at @s run data merge entity @s {Health:23.9f}
execute if predicate sleep:time run execute as @e[type=trader_llama] at @s run execute if block ~ ~ ~ water run data merge entity @s {Health:23.9f}
execute if predicate sleep:time run execute as @e[type=trader_llama,nbt={Health:24.0f}] at @s run execute if block ~ ~-0.6 ~ #sleep:sleep run data merge entity @s {Health:23.9f}
execute if predicate sleep:time run execute as @e[type=trader_llama] at @s run execute if block ~ ~ ~ #minecraft:fire run data merge entity @s {Health:23.9f}

execute if predicate sleep:thunder run execute if predicate sleep:time run execute as @e[type=sheep,nbt={Health:8.0f}] at @s run data merge entity @s {Health:7.9f}
execute if predicate sleep:rain run execute if predicate sleep:time run execute as @e[type=sheep,nbt={Health:8.0f}] at @s run data merge entity @s {Health:7.9f}
execute if predicate sleep:time run execute as @e[type=sheep] at @s run execute if block ~ ~ ~ water run data merge entity @s {Health:7.9f}
execute if predicate sleep:time run execute as @e[type=sheep,nbt={Health:8.0f}] at @s run execute if block ~ ~-0.6 ~ #sleep:sleep run data merge entity @s {Health:7.9f}
execute if predicate sleep:time run execute as @e[type=sheep] at @s run execute if block ~ ~ ~ #minecraft:fire run data merge entity @s {Health:7.9f}

execute if predicate sleep:thunder run execute if predicate sleep:time run execute as @e[type=goat,nbt={Health:10.0f}] at @s run data merge entity @s {Health:9.9f}
execute if predicate sleep:rain run execute if predicate sleep:time run execute as @e[type=goat,nbt={Health:10.0f}] at @s run data merge entity @s {Health:9.9f}
execute if predicate sleep:time run execute as @e[type=goat] at @s run execute if block ~ ~ ~ water run data merge entity @s {Health:9.9f}
execute if predicate sleep:time run execute as @e[type=goat,nbt={Health:10.0f}] at @s run execute if block ~ ~-0.6 ~ #sleep:sleep run data merge entity @s {Health:9.9f}
execute if predicate sleep:time run execute as @e[type=goat] at @s run execute if block ~ ~ ~ #minecraft:fire run data merge entity @s {Health:9.9f}

execute if predicate sleep:thunder run execute if predicate sleep:time run execute as @e[type=parrot,nbt={Health:6.0f}] at @s run data merge entity @s {Health:5.9f}
execute if predicate sleep:rain run execute if predicate sleep:time run execute as @e[type=parrot,nbt={Health:6.0f}] at @s run data merge entity @s {Health:5.9f}
execute if predicate sleep:time run execute as @e[type=parrot] at @s run execute if block ~ ~ ~ water run data merge entity @s {Health:5.9f}
execute if predicate sleep:time run execute as @e[type=parrot,nbt={Health:6.0f}] at @s run execute if block ~ ~-0.6 ~ #sleep:sleep run data merge entity @s {Health:5.9f}
execute if predicate sleep:time run execute as @e[type=parrot] at @s run execute if block ~ ~ ~ #minecraft:fire run data merge entity @s {Health:5.9f}

execute if predicate sleep:thunder run execute if predicate sleep:time run execute as @e[type=cow,nbt={Health:10.0f}] at @s run data merge entity @s {Health:9.9f}
execute if predicate sleep:rain run execute if predicate sleep:time run execute as @e[type=cow,nbt={Health:10.0f}] at @s run data merge entity @s {Health:9.9f}
execute if predicate sleep:time run execute as @e[type=cow,nbt={Health:10.0f}] at @s run execute if block ~ ~-0.6 ~ #sleep:sleep run execute run data merge entity @s {Health:9.9f}
execute if predicate sleep:time run execute as @e[type=cow] at @s run execute if block ~ ~ ~ water run data merge entity @s {Health:9.9f}
execute if predicate sleep:time run execute as @e[type=cow] at @s run execute if block ~ ~ ~ #minecraft:fire run data merge entity @s {Health:9.9f}

execute if predicate sleep:thunder run execute if predicate sleep:time run execute as @e[type=turtle,nbt={Health:20.0f}] at @s run data merge entity @s {Health:29.9f}
execute if predicate sleep:rain run execute if predicate sleep:time run execute as @e[type=turtle,nbt={Health:20.0f}] at @s run data merge entity @s {Health:29.9f}
execute if predicate sleep:time run execute as @e[type=turtle,nbt={Health:20.0f}] at @s run execute if block ~ ~-0.6 ~ #sleep:sleep run data merge entity @s {Health:29.9f}
execute if predicate sleep:time run execute as @e[type=turtle] at @s run execute if block ~ ~ ~ water run data merge entity @s {Health:29.9f}
execute if predicate sleep:time run execute as @e[type=turtle] at @s run execute if block ~ ~ ~ #minecraft:fire run data merge entity @s {Health:29.9f}

execute if predicate sleep:thunder run execute if predicate sleep:time run execute as @e[type=rabbit,nbt={Health:3.0f}] at @s run data merge entity @s {Health:2.9f}
execute if predicate sleep:rain run execute if predicate sleep:time run execute as @e[type=rabbit,nbt={Health:3.0f}] at @s run data merge entity @s {Health:2.9f}
execute if predicate sleep:time run execute as @e[type=rabbit,nbt={Health:3.0f}] at @s run execute if block ~ ~-1.5 ~ #sleep:sleep run data merge entity @s {Health:2.9f}
execute if predicate sleep:time run execute as @e[type=rabbit] at @s run execute if block ~ ~ ~ water run data merge entity @s {Health:2.9f}
execute if predicate sleep:time run execute as @e[type=rabbit] at @s run execute if block ~ ~ ~ #minecraft:fire run data merge entity @s {Health:2.9f}

execute if predicate sleep:thunder run execute if predicate sleep:time run execute as @e[type=mooshroom,nbt={Health:10.0f}] at @s run data merge entity @s {Health:9.9f}
execute if predicate sleep:rain run execute if predicate sleep:time run execute as @e[type=mooshroom,nbt={Health:10.0f}] at @s run data merge entity @s {Health:9.9f}
execute if predicate sleep:time run execute as @e[type=mooshroom,nbt={Health:10.0f}] at @s run execute if block ~ ~-0.6 ~ #sleep:sleep run data merge entity @s {Health:9.9f}
execute if predicate sleep:time run execute as @e[type=minecraft:mooshroom] at @s run execute if block ~ ~ ~ water run data merge entity @s {Health:9.9f}
execute if predicate sleep:time run execute as @e[type=minecraft:mooshroom] at @s run execute if block ~ ~ ~ #minecraft:fire run data merge entity @s {Health:9.9f}

execute if predicate sleep:thunder run execute if predicate sleep:time run execute as @e[type=pig,nbt={Health:10.0f}] at @s run data merge entity @s {Health:9.9f}
execute if predicate sleep:rain run execute if predicate sleep:time run execute as @e[type=pig,nbt={Health:10.0f}] at @s run data merge entity @s {Health:9.9f}
execute if predicate sleep:time run execute as @e[type=pig,nbt={Health:10.0f}] at @s run execute if block ~ ~-0.6 ~ #sleep:sleep run data merge entity @s {Health:9.9f}
execute if predicate sleep:time run execute as @e[type=pig] at @s run execute if block ~ ~ ~ water run data merge entity @s {Health:9.9f}
execute if predicate sleep:time run execute as @e[type=pig] at @s run execute if block ~ ~ ~ #minecraft:fire run data merge entity @s {Health:9.9f}

execute if predicate sleep:thunder run execute if predicate sleep:time run execute as @e[type=polar_bear,nbt={Health:30.0f}] at @s run data merge entity @s {Health:29.9f}
execute if predicate sleep:rain run execute if predicate sleep:time run execute as @e[type=polar_bear,nbt={Health:30.0f}] at @s run data merge entity @s {Health:29.9f}
execute if predicate sleep:time run execute as @e[type=polar_bear,nbt={Health:30.0f}] at @s run execute if block ~ ~-0.6 ~ #sleep:sleep run data merge entity @s {Health:29.9f}
execute if predicate sleep:time run execute as @e[type=polar_bear] at @s run execute if block ~ ~ ~ water run data merge entity @s {Health:29.9f}
execute if predicate sleep:time run execute as @e[type=polar_bear] at @s run execute if block ~ ~ ~ #minecraft:fire run data merge entity @s {Health:29.9f}

execute if predicate sleep:rain run execute if predicate sleep:time run execute as @e[type=chicken,nbt={Health:4.0f}] at @s run data merge entity @s {Health:3.9f}
execute if predicate sleep:thunder run execute if predicate sleep:time run execute as @e[type=chicken,nbt={Health:4.0f}] at @s run data merge entity @s {Health:3.9f}
execute if predicate sleep:time run execute as @e[type=chicken] at @s run execute if block ~ ~ ~ water run data merge entity @s {Health:3.9f}
execute if predicate sleep:time run execute as @e[type=chicken,nbt={Health:4.0f}] at @s run execute if block ~ ~-0.6 ~ #sleep:sleep run data merge entity @s {Health:3.9f}
execute if predicate sleep:time run execute as @e[type=chicken] at @s run execute if block ~ ~ ~ #minecraft:fire run data merge entity @s {Health:3.9f}

execute if predicate sleep:rain run execute if predicate sleep:time run execute as @e[type=wolf,nbt={Health:8.0f}] at @s run data merge entity @s {Health:7.9f}
execute if predicate sleep:thunder run execute if predicate sleep:time run execute as @e[type=wolf,nbt={Health:8.0f}] at @s run data merge entity @s {Health:7.9f}
execute if predicate sleep:time run execute as @e[type=wolf] at @s run execute if block ~ ~ ~ water run data merge entity @s {Health:7.9f}
execute if predicate sleep:time run execute as @e[type=wolf,nbt={Health:8.0f}] at @s run execute if block ~ ~-0.6 ~ #sleep:sleep run data merge entity @s {Health:7.9f}
execute if predicate sleep:time run execute as @e[type=wolf] at @s run execute if block ~ ~ ~ #minecraft:fire run data merge entity @s {Health:7.9f}

execute if predicate sleep:rain run execute if predicate sleep:time run execute as @e[type=panda,nbt={Health:20.0f}] at @s run data merge entity @s {Health:19.9f}
execute if predicate sleep:thunder run execute if predicate sleep:time run execute as @e[type=panda,nbt={Health:20.0f}] at @s run data merge entity @s {Health:19.9f}
execute if predicate sleep:time run execute as @e[type=panda] at @s run execute if block ~ ~ ~ water run data merge entity @s {Health:19.9f}
execute if predicate sleep:time run execute as @e[type=panda,nbt={Health:20.0f}] at @s run execute if block ~ ~-0.7 ~ #sleep:sleep run data merge entity @s {Health:19.9f}
execute if predicate sleep:time run execute as @e[type=panda] at @s run execute if block ~ ~ ~ #minecraft:fire run data merge entity @s {Health:19.9f}

#Illagers
execute unless predicate sleep:time run gamerule disableRaids false
execute if predicate sleep:time run gamerule universalAnger true
execute if predicate sleep:time run execute as @e[type=pillager] at @s run execute if block ~ ~ ~ water run data merge entity @s {Health:23.9f}
execute if predicate sleep:time run execute as @e[type=pillager,nbt={Health:24.0f}] at @s run execute if block ~ ~-0.7 ~ #sleep:sleep run data merge entity @s {Health:23.9f}
execute if predicate sleep:time run execute as @e[type=pillager] at @s run execute if block ~ ~ ~ #minecraft:fire run data merge entity @s {Health:23.9f}
execute if predicate sleep:time run execute as @e[type=vindicator] at @s run execute if block ~ ~ ~ water run data merge entity @s {Health:23.9f}
execute if predicate sleep:time run execute as @e[type=vindicator,nbt={Health:24.0f}] at @s run execute if block ~ ~-0.7 ~ #sleep:sleep run data merge entity @s {Health:23.9f}
execute if predicate sleep:time run execute as @e[type=vindicator] at @s run execute if block ~ ~ ~ #minecraft:fire run data merge entity @s {Health:23.9f}
execute if predicate sleep:time run execute as @e[type=evoker] at @s run execute if block ~ ~ ~ water run data merge entity @s {Health:23.9f}
execute if predicate sleep:time run execute as @e[type=evoker,nbt={Health:24.0f}] at @s run execute if block ~ ~-0.7 ~ #sleep:sleep run data merge entity @s {Health:23.9f}
execute if predicate sleep:time run execute as @e[type=evoker] at @s run execute if block ~ ~ ~ #minecraft:fire run data merge entity @s {Health:23.9f}
execute if predicate sleep:time run execute as @e[type=#minecraft:raiders,tag=Damage] at @s run scoreboard players add @s Illager 1
execute if predicate sleep:time run execute as @e[type=#minecraft:raiders,tag=Damage,scores={Illager=..2400}] at @s run scoreboard players reset @s DamageTimer
execute unless predicate sleep:time run scoreboard players reset @e[type=#minecraft:raiders] Illager
execute if predicate sleep:time run execute as @e[type=minecraft:pillager,tag=!a,tag=Damage] at @s run function sleep:raiders/pillager
execute if predicate sleep:time run execute as @e[type=minecraft:pillager,tag=!b,tag=!Damage] at @s run function sleep:raiders/stick
execute if predicate sleep:time run execute as @e[type=#minecraft:raiders,tag=Damage,scores={Illager=..2400}] at @s run execute as @e[type=#minecraft:raiders,distance=..30] at @s run function sleep:raiders/illager

#Sigilo
execute if predicate sleep:time run execute as @a[gamemode=!creative,gamemode=!spectator] at @s unless predicate sleep:snake run execute as @e[type=minecraft:rabbit,distance=2..6] at @s run function sleep:damage/damage
execute if predicate sleep:time run execute as @a[gamemode=!creative,gamemode=!spectator] at @s unless predicate sleep:snake run execute as @e[type=minecraft:rabbit,distance=2..10] at @s run function sleep:damage/damage
execute if predicate sleep:time run execute as @a[gamemode=!creative,gamemode=!spectator] at @s unless predicate sleep:snake run execute as @e[type=minecraft:rabbit,distance=2..6] at @s run data merge entity @s {Health:2.9f}
execute if predicate sleep:time run execute as @a[gamemode=!creative,gamemode=!spectator] at @s unless predicate sleep:snake run execute as @e[type=minecraft:wolf,distance=2..7] at @s run function sleep:damage/anger
execute if predicate sleep:time run execute as @e[type=#minecraft:raiders] at @s if entity @a[gamemode=!spectator,gamemode=!creative,distance=..2] run function sleep:raiders/illager
execute if predicate sleep:time run execute as @a[gamemode=!creative,gamemode=!spectator] at @s unless predicate sleep:snake run execute as @e[type=#minecraft:raiders,distance=..30] at @s run function sleep:raiders/illager 

#Mecanicas comunes
execute unless predicate sleep:time run execute as @e[type=#sleep:sleep,tag=!notsleep] at @s run function sleep:sleep/notsleep
execute if predicate sleep:time run execute as @e[type=#sleep:sleep,tag=!sleep] at @s run function sleep:sleep/sleep

execute if predicate sleep:time run execute as @e[type=#sleep:sleep,tag=Damage,scores={DamageTimer=240..}] at @s run function sleep:damage/damagetime
execute if predicate sleep:time run execute as @e[type=#sleep:sleep,tag=Damage] at @s run scoreboard players add @s DamageTimer 1
execute if predicate sleep:time run execute as @e[type=#sleep:sleep,nbt={HurtTime:10s}] at @s run function sleep:damage/damage
execute if predicate sleep:time run execute as @e[type=minecraft:wolf] at @s unless data entity @s {AngerTime:0} run scoreboard players reset @s DamageTimer
execute if predicate sleep:time run gamerule disableRaids true
execute if predicate sleep:time run execute as @e[type=#sleep:sleep,tag=!Damage] at @s run data merge entity @s {NoAI:1,Silent:1b}
execute if predicate sleep:time run execute as @e[type=goat,tag=!Damage] at @s unless block ~ ~-0.01 ~ #sleep:sleep run tp @s ~ ~ ~ ~ -50
execute as @e[type=minecraft:wolf] at @s if entity @a[distance=..1,gamemode=!spectator,gamemode=!creative] run function sleep:damage/anger
execute as @e[type=villager] at @s if block ~ ~ ~ #minecraft:beds run execute if predicate sleep:time run data merge entity @s {CustomNameVisible:0b,CustomName:'{"text":"Sleep"}'}
execute unless predicate sleep:time run gamerule universalAnger false
execute if predicate sleep:time run execute as @e[type=sheep,tag=!Damage] at @s unless block ~ ~-0.01 ~ #sleep:sleep run tp @s ~ ~ ~ ~ 45
execute if predicate sleep:time run execute as @e[type=#sleep:sleep,type=!minecraft:sheep,type=!minecraft:goat,tag=!Damage] at @s run tp @s ~ ~ ~ ~ 0
execute if predicate sleep:time run execute as @e[type=#sleep:sleep] at @s if block ~ ~ ~ #minecraft:fire run function sleep:damage/damage
execute if predicate sleep:time run execute as @e[type=#sleep:sleep] at @s if block ~ ~ ~ water run function sleep:damage/damage
execute if predicate sleep:time run execute as @e[type=#sleep:sleep] at @s if block ~ ~-0.6 ~ #sleep:sleep run function sleep:damage/damage
execute if predicate sleep:time run execute as @e[type=#sleep:sleep] at @s unless data entity @s {Fire:-1s} run function sleep:damage/damage