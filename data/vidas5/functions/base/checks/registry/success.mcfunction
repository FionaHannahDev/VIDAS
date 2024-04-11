summon marker ~ ~1 ~ {Tags:["VSCore","VSCircle"],CustomName:'{"text":"V.I.D.A.S Circle"}'}

execute as @e[type=marker,tag=VSCore, tag=VSCircle,sort=nearest,limit=1] at @s run function vidas5:animations/config/circlereg/init
