#Adjust VSCXPCost down by 1
scoreboard players remove VIDAS.Config VSCXPCost2 1

#If the cost became -1, change it to 0
execute if score VIDAS.Config VSCXPCost2 matches -1 run scoreboard players set VIDAS.Config VSCXPCost2 0

#redraw
function vidas5:ui/loadscreen/config/xpmoredetails/main