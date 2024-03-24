#Determine current tag, replace with next, redraw screen

scoreboard players add VIDAS.Config VSCXPType 1
execute if score VIDAS.Config VSCXPType matches 3 run scoreboard players set VIDAS.Config VSCXPType 0

function vidas5:ui/loadscreen/config/xpmoredetails/main