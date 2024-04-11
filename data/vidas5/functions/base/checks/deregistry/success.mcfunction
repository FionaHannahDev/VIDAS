execute as @e[type=marker,tag=VSCore, tag=VSCircle,sort=nearest,limit=1] at @s run tag @s add VSCircleDereg
execute as @e[tag=VSCircleDereg,sort=nearest,limit=1] at @s run function vidas5:animations/config/circledereg/init
