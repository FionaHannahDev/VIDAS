#Adjust VSCXPCost up by 1
scoreboard players remove VIDAS.Config VSCTInit 1

#Go through values one by one to make sure that if there are any values higher, this then becomes the highest

scoreboard players set VIDAS.Config VSCTtest 0

#No validation needs to occur. As long as INIT tick is 1 or higher, this will work.

#VIDAS.Config VSCTtest is now the highest score that isnt VSCTTP

#Ensure that VIDAS.Config VSCTTP is floored to next highest
execute if score VIDAS.Config VSCTInit <= VIDAS.Config VSCTtest run function vidas5:ui/loadscreen/config/timings/config/init/floor

#redraw
function vidas5:ui/loadscreen/config/timings/config/main