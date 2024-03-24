#Adjust VSCXPCost up by 1
scoreboard players add VIDAS.Config VSCXPCost2 1

#Sensible maximum should be 55 as *this is how many commands will need to execute on burst*. This is also 5 levels of XP from 0 to 5 exactly
execute if score VIDAS.Config VSCXPCost2 matches 56 run scoreboard players set VIDAS.Config VSCXPCost2 55

#redraw
function vidas5:ui/loadscreen/config/xpmoredetails/main