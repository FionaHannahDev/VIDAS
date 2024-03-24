#Adjust VSCXPCost up by 1
scoreboard players remove VIDAS.Config VSCXPCosttick 1

#Sensible maximum should be 10 as *this is how many commands will need to execute on burst*. 
execute if score VIDAS.Config VSCXPCosttick matches -1 run scoreboard players set VIDAS.Config VSCXPCosttick 0

#redraw
function vidas5:ui/loadscreen/config/xpmoredetails/main