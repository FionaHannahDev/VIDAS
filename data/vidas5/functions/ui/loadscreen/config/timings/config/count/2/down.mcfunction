#Adjust VSCXPCost up by 1
scoreboard players remove VIDAS.Config VSCT2 1

#Go through values one by one to make sure that if there are any values higher, this then becomes the highest

scoreboard players set VIDAS.Config VSCTtest 0

execute if score VIDAS.Config VSCTtest <= VIDAS.Config VSCT1 run scoreboard players operation VIDAS.Config VSCTtest = VIDAS.Config VSCT1

#VIDAS.Config VSCTtest is now the highest score that isnt VSCTTP

#Ensure that VIDAS.Config VSCTTP is floored to next highest
execute if score VIDAS.Config VSCT2 <= VIDAS.Config VSCTtest run function vidas5:ui/loadscreen/config/timings/config/count/2/floor

#redraw
function vidas5:ui/loadscreen/config/timings/config/main