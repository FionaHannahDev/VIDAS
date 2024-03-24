#This shows Xp drain options

#Title page
tellraw @a[tag=VSConfiging] ["",{"text":"-------------------------------------------------","color":"gray"},"\n","/////                                                           \\\\\\\\\\","\n",{"text":"              [","bold":true,"color":"dark_gray"},{"text":"VIDAS ","bold":true,"italic":true,"color":"gray"},{"text":"-","italic":true,"color":"dark_gray"},{"text":" Configuration, XP","bold":true,"italic":true,"color":"gray"},{"text":"]","bold":true,"color":"dark_gray"}]

#options to include:
#XP Drain Type. VSCXPType (0,1,2)
#    Constant Per Second
#    Extract cost at time of TP
#    Both

#XP cost different for circles than flash? VSCXPSeperate (0/1)
#XP Drain Cost VSCXPCost
#XP Drain Coost Flash VSCXPCost2


#Drain Type
function vidas5:ui/loadscreen/config/xpmoredetails/draintype/current
