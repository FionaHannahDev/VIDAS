#VSReady for ticking function
tag @s add VSReady

#VSFlash for circ vidas criteria checks
tag @s add VSCirc

#Update player XP
execute as @s store result score @s VSPlayerXP run data get entity @s XpTotal 1

#CHECK FOR PORTAL REGISTRATION
execute unless entity @e[tag=VSCore,sort=nearest,limit=1,distance=..1] align xyz positioned ~0.5 ~-0.5 ~0.5 run function vidas5:base/checks/registry/success 