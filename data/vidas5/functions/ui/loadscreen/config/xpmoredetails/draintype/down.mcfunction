#Determine current tag, replace with next, redraw screen

scoreboard players remove VIDAS.Config VSCXPType 1
execute if score VIDAS.Config VSCXPType matches -1 run scoreboard players set VIDAS.Config VSCXPType 2

function vidas5:ui/loadscreen/config/xpmoredetails/main