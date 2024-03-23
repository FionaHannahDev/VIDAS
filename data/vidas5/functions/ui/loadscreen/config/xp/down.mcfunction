#Determine current tag, replace with next, redraw screen

scoreboard players remove VIDAS.Config VSCXP 1
execute if score VIDAS.Config VSCXP matches -1 run scoreboard players set VIDAS.Config VSCXP 3

function vidas5:ui/loadscreen/config/main