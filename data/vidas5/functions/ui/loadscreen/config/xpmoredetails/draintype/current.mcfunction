#Display current status of VIDAS.Config VSCXPType

#Drain over time
execute if score VIDAS.Config VSCXPType matches 0 run function vidas5:ui/loadscreen/config/xpmoredetails/draintype/drain/main
#Instant take
execute if score VIDAS.Config VSCXPType matches 1 run function vidas5:ui/loadscreen/config/xpmoredetails/draintype/burst/main

#Both - ALSO REQUIRES EXECUTION OF ADDITIONAL "SHOW THIS"
execute if score VIDAS.Config VSCXPType matches 2 run function vidas5:ui/loadscreen/config/xpmoredetails/draintype/bothopts/main