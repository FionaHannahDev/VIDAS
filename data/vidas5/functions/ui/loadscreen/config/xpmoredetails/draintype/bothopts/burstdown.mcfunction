#Adjust VSCXPCost down by 1
scoreboard players remove VIDAS.Config VSCXPCost 1

#If the cost became -1, change it to 0
execute if score VIDAS.Config VSCXPCost matches -1 run scoreboard players set VIDAS.Config VSCXPCost 0

#redraw
function vidas5:ui/loadscreen/config/xpmoredetails/main