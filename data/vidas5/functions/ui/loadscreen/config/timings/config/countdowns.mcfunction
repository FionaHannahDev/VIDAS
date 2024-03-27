#The subdisplay functions control the use of "next / remove this" displays. only SHOW a function if is above -1

#Set VIDAS.Config VSCTtest to 0
scoreboard players set VIDAS.Config VSCTtest 0

#Display [Add count] if there are no counts displayed (i.e, VSCT1 is -1). THIS ONLY NEEDS TO BE DONE FOR THE FIRST ONE. 
execute if score VIDAS.Config VSCT1 < VIDAS.Config VSCTtest run function vidas5:ui/loadscreen/config/timings/config/count/initadd

#Count 1 above -1?
execute if score VIDAS.Config VSCT1 matches 0.. run function vidas5:ui/loadscreen/config/timings/config/count/1/disp

#Count 2 above -1
execute if score VIDAS.Config VSCT2 matches 0.. run function vidas5:ui/loadscreen/config/timings/config/count/2/disp

#Count 3 above -1
execute if score VIDAS.Config VSCT3 matches 0.. run function vidas5:ui/loadscreen/config/timings/config/count/3/disp

#Count 4 above -1
execute if score VIDAS.Config VSCT4 matches 0.. run function vidas5:ui/loadscreen/config/timings/config/count/4/disp

#Count 5 above -1
execute if score VIDAS.Config VSCT5 matches 0.. run function vidas5:ui/loadscreen/config/timings/config/count/5/disp

#Count 6 above -1
execute if score VIDAS.Config VSCT6 matches 0.. run function vidas5:ui/loadscreen/config/timings/config/count/6/disp

#Count 7 above -1
execute if score VIDAS.Config VSCT7 matches 0.. run function vidas5:ui/loadscreen/config/timings/config/count/7/disp

#Count 8 above -1
execute if score VIDAS.Config VSCT8 matches 0.. run function vidas5:ui/loadscreen/config/timings/config/count/8/disp

#Count 9 above -1
execute if score VIDAS.Config VSCT9 matches 0.. run function vidas5:ui/loadscreen/config/timings/config/count/9/disp

#Count 10 above -1
execute if score VIDAS.Config VSCT10 matches 0.. run function vidas5:ui/loadscreen/config/timings/config/count/10/disp