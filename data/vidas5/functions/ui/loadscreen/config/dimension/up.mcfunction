#Determine current tag, replace with next, redraw screen

scoreboard players add VIDAS.Config VSCdim 1
execute if score VIDAS.Config VSCdim matches 4 run scoreboard players set VIDAS.Config VSCdim 0

function vidas5:ui/loadscreen/config/main