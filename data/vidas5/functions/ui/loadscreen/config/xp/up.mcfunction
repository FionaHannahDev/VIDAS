#Determine current tag, replace with next, redraw screen

scoreboard players add VIDAS.Config VSCXP 1
execute if score VIDAS.Config VSCXP matches 4 run scoreboard players set VIDAS.Config VSCXP 0

function vidas5:ui/loadscreen/config/main