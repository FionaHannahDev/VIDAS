#Check if both circle and flash are enabled. If they are, only THEN do we show this
execute if score VIDAS.Config VSCCircles matches 1 if score VIDAS.Config VSCFlash matches 1 run function vidas5:ui/loadscreen/config/xpmoredetails/seperate/displayoption 
