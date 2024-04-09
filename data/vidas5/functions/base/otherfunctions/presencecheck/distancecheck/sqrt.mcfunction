scoreboard players operation @s VSSQRTX += @s VSSQRTI
scoreboard players add @s VSDistance 1
scoreboard players add @s VSSQRTI 2
execute as @s if score @s VSDsum > @s VSSQRTX run function vidas5:base/otherfunctions/presencecheck/distancecheck/sqrt