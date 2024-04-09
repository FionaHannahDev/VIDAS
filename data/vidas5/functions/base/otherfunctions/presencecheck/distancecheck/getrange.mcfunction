#Apply tracking marker
tag @s add VSTracking


#store coords of nearest player. Prevalidation should rule out anyone above 30 meters already
execute store result score @s VSX run data get entity @s Pos[0]
execute store result score @s VSY run data get entity @s Pos[1]
execute store result score @s VSZ run data get entity @s Pos[2]

#Store player coords
execute as @p at @s store result score @s VSX run data get entity @s Pos[0]
execute as @p at @s store result score @s VSY run data get entity @s Pos[1]
execute as @p at @s store result score @s VSZ run data get entity @s Pos[2]


#calculate dif
#X
scoreboard players operation @s VSDX = @s VSX
scoreboard players operation @s VSDX -= @p VSX
#Y
scoreboard players operation @s VSDY = @s VSY
scoreboard players operation @s VSDY -= @p VSY
#Z
scoreboard players operation @s VSDZ = @s VSZ
scoreboard players operation @s VSDZ -= @p VSZ

#Square dif
scoreboard players operation @s VSDX *= @s VSDX
scoreboard players operation @s VSDY *= @s VSDY
scoreboard players operation @s VSDZ *= @s VSDZ

#Sum the dif
scoreboard players operation @s VSDsum = @s VSDX
scoreboard players operation @s VSDsum += @s VSDY
scoreboard players operation @s VSDsum += @s VSDZ

#Run recursive Square route distance checker

function vidas5:base/otherfunctions/presencecheck/distancecheck/sqrt

#Set initialisation for recurse
scoreboard players set @s VSSQRTI 1
scoreboard players set @s VSSQRTX 0
scoreboard players set @s VSDistance 0
#Run algo
execute if score @s VSDsum > @s VSSQRTX run function vidas5:base/otherfunctions/presencecheck/distancecheck/sqrt

