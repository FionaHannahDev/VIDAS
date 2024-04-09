execute as @s at @s anchored eyes positioned ^ ^ ^2 run tag @e[distance=0..5,tag=VSCircle] add VSKILLTEMP

tp @e[tag=VSKILLTEMP] ~ ~-100 ~

tag @s remove VSAnimDeReg

kill @e[tag=VSKILLTEMP]