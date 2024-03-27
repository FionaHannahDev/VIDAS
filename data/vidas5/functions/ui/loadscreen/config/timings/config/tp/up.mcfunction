#Adjust VSCXPCost up by 1
scoreboard players add VIDAS.Config VSCTTP 1


#No max tick validation should occur here, but just in case, 1200 is a full minute. Ill put that as a hard max. Why would you need a full minute teleport? no clue.
execute if score VIDAS.Config VSCTTP matches 1201 run scoreboard players set VIDAS.Config VSCXPCosttick 1200

#Adjust VSCTPAbsolute
scoreboard players set VIDAS.Config VSCTPAbsolute 5
scoreboard players operation VIDAS.Config VSCTPAbsolute += VIDAS.Config VSCTTP

#redraw
function vidas5:ui/loadscreen/config/timings/config/main