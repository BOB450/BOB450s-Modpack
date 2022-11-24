schedule function africa:main_lp 1s
data merge entity @e[tag=meer,limit=1,sort=random] {Age:-20000}
data merge entity @e[tag=shrew,limit=1,sort=random] {Age:-20000}
data merge entity @e[type=husk,limit=1,tag=lion,sort=random] {InWaterTime:-1}
team join friendly @a
team modify friendly friendlyFire false
team modify friendly seeFriendlyInvisibles false
execute at @e[tag=eating] run playsound block.azalea_leaves.break ambient @a ~ ~6 ~ 0.4 1