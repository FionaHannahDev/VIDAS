#as player with VSLocalCGFTick, check for nearest marker with VSCircle. As that, run particles that outline circle

#Rotate that bitch inner marker
execute as @e[type=marker,tag=VSCircle,tag=VSInner,distance=0..20] at @s run scoreboard players remove @s VSRotate 2
execute as @e[type=marker,tag=VSCircle,tag=VSInner,distance=0..20] at @s run execute store result entity @s Rotation[0] float 1 run scoreboard players get @s VSRotate
execute as @e[type=marker,tag=VSCircle,tag=VSInner,distance=0..20] at @s run particle soul_fire_flame ^ ^ ^5 0 0 0 0 1 force
execute as @e[type=marker,tag=VSCircle,tag=VSInner,distance=0..20] at @s run particle soul_fire_flame ^ ^ ^-5 0 0 0 0 1 force
execute as @e[type=marker,tag=VSCircle,tag=VSInner,distance=0..20] at @s run particle soul_fire_flame ^5 ^ ^ 0 0 0 0 1 force
execute as @e[type=marker,tag=VSCircle,tag=VSInner,distance=0..20] at @s run particle soul_fire_flame ^-5 ^ ^ 0 0 0 0 1 force

#Rotate that bitch outer marker
execute as @e[type=marker,tag=VSCircle,tag=VSOuter,distance=0..20] at @s run scoreboard players add @s VSRotate 1
execute as @e[type=marker,tag=VSCircle,tag=VSOuter,distance=0..20] at @s run execute store result entity @s Rotation[0] float 1 run scoreboard players get @s VSRotate
execute as @e[type=marker,tag=VSCircle,tag=VSOuter,distance=0..20] at @s run particle end_rod ^ ^ ^10 0 0 0 0 1 force
execute as @e[type=marker,tag=VSCircle,tag=VSOuter,distance=0..20] at @s run particle end_rod ^ ^ ^-10 0 0 0 0 1 force

#Denote activation platform
execute as @e[type=marker,tag=VSCircle,tag=VSCenter,distance=0..20] at @s run particle end_rod ~ ~ ~ 0.2 0 0.2 0 1 force

#Show some stars
execute as @e[type=marker,tag=VSCircle,tag=VSCenter,distance=0..20] at @s run particle end_rod ~ ~5 ~ 10 5 10 0 1 force