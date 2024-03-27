#Adjust VSCXPCost up by 1
scoreboard players remove VIDAS.Config VSCTTP 1

#Go through values one by one to make sure that if there are any values higher, this then becomes the highest

scoreboard players set VIDAS.Config VSCTtest 0

execute if score VIDAS.Config VSCTtest <= VIDAS.Config VSCTInit run scoreboard players operation VIDAS.Config VSCTtest = VIDAS.Config VSCTInit
execute if score VIDAS.Config VSCTtest <= VIDAS.Config VSCT1 run scoreboard players operation VIDAS.Config VSCTtest = VIDAS.Config VSCT1
execute if score VIDAS.Config VSCTtest <= VIDAS.Config VSCT2 run scoreboard players operation VIDAS.Config VSCTtest = VIDAS.Config VSCT2
execute if score VIDAS.Config VSCTtest <= VIDAS.Config VSCT3 run scoreboard players operation VIDAS.Config VSCTtest = VIDAS.Config VSCT3
execute if score VIDAS.Config VSCTtest <= VIDAS.Config VSCT4 run scoreboard players operation VIDAS.Config VSCTtest = VIDAS.Config VSCT4
execute if score VIDAS.Config VSCTtest <= VIDAS.Config VSCT5 run scoreboard players operation VIDAS.Config VSCTtest = VIDAS.Config VSCT5
execute if score VIDAS.Config VSCTtest <= VIDAS.Config VSCT6 run scoreboard players operation VIDAS.Config VSCTtest = VIDAS.Config VSCT6
execute if score VIDAS.Config VSCTtest <= VIDAS.Config VSCT7 run scoreboard players operation VIDAS.Config VSCTtest = VIDAS.Config VSCT7
execute if score VIDAS.Config VSCTtest <= VIDAS.Config VSCT8 run scoreboard players operation VIDAS.Config VSCTtest = VIDAS.Config VSCT8
execute if score VIDAS.Config VSCTtest <= VIDAS.Config VSCT9 run scoreboard players operation VIDAS.Config VSCTtest = VIDAS.Config VSCT9
execute if score VIDAS.Config VSCTtest <= VIDAS.Config VSCT10 run scoreboard players operation VIDAS.Config VSCTtest = VIDAS.Config VSCT10
execute if score VIDAS.Config VSCTtest <= VIDAS.Config VSCTLockout run scoreboard players operation VIDAS.Config VSCTtest = VIDAS.Config VSCTLockout

#VIDAS.Config VSCTtest is now the highest score that isnt VSCTTP

#Ensure that VIDAS.Config VSCTTP is floored to next highest
execute if score VIDAS.Config VSCTTP <= VIDAS.Config VSCTtest run function vidas5:ui/loadscreen/config/timings/config/tp/floor

#redraw
function vidas5:ui/loadscreen/config/timings/config/main