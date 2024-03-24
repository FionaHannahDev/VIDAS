#Adjust VSCXPCost up by 1
scoreboard players add VIDAS.Config VSCXPCosttick2 1

#Sensible maximum should be 10 as *this is how many commands will need to execute on burst*. 
execute if score VIDAS.Config VSCXPCosttick2 matches 11 run scoreboard players set VIDAS.Config VSCXPCosttick2 10

#redraw
function vidas5:ui/loadscreen/config/xpmoredetails/main