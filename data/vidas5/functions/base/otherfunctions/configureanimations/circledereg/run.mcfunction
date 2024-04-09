#Rotate the regreg marker
execute as @e[type=marker,tag=VSCircle,tag=VSDereg,distance=0..20] at @s run scoreboard players add @s VSRotate 3
execute as @e[type=marker,tag=VSCircle,tag=VSDereg,distance=0..20] at @s run execute store result entity @s Rotation[0] float 1 run scoreboard players get @s VSRotate
execute as @e[type=marker,tag=VSCircle,tag=VSDereg,distance=0..20] at @s run particle flame ^ ^ ^3 0 0 0 0 1 force
execute as @e[type=marker,tag=VSCircle,tag=VSDereg,distance=0..20] at @s run particle flame ^ ^ ^-3 0 0 0 0 1 force
execute as @e[type=marker,tag=VSCircle,tag=VSDereg,distance=0..20] at @s run particle flame ^3 ^ ^ 0 0 0 0 1 force
execute as @e[type=marker,tag=VSCircle,tag=VSDereg,distance=0..20] at @s run particle flame ^-3 ^ ^ 0 0 0 0 1 force