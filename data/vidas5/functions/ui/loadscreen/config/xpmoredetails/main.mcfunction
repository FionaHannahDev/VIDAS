#This shows Xp drain options

#Title page
tellraw @a[tag=VSConfiging] ["",{"text":"-------------------------------------------------","color":"gray"},"\n","/////                                                           \\\\\\\\\\","\n",{"text":"              [","bold":true,"color":"dark_gray"},{"text":"VIDAS ","bold":true,"italic":true,"color":"gray"},{"text":"-","italic":true,"color":"dark_gray"},{"text":" Configuration, XP","bold":true,"italic":true,"color":"gray"},{"text":"]","bold":true,"color":"dark_gray"}]
tellraw @a[tag=VSConfiging] " "
#options to include:
#XP Drain Type. VSCXPType (0,1,2)
#    Constant Per Second
#    Extract cost at time of TP
#    Both

#XP cost different for circles than flash? VSCXPSeperate (0/1)
#XP Drain Cost VSCXPCost
#XP Drain Coost Flash VSCXPCost2

#Spacer 1

#Drain Type
function vidas5:ui/loadscreen/config/xpmoredetails/draintype/current

tellraw @a[tag=VSConfiging] " "

#Use seperate values for flash / circle
function vidas5:ui/loadscreen/config/xpmoredetails/seperate/current

#Spacer2
tellraw @a[tag=VSConfiging] " "

#5 lines
tellraw @a[tag=VSConfiging] " "
tellraw @a[tag=VSConfiging] " "
tellraw @a[tag=VSConfiging] " "
tellraw @a[tag=VSConfiging] " "
tellraw @a[tag=VSConfiging] " "

#back command
tellraw @a[tag=VSConfiging] {"text":"[back]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/config/main"}}