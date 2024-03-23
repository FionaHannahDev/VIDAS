#Determine current tag, replace with next, redraw screen

scoreboard players remove VIDAS.Config VSCdim 1
execute if score VIDAS.Config VSCdim matches -1 run scoreboard players set VIDAS.Config VSCdim 3

function vidas5:ui/loadscreen/config/main