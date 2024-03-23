#Determine current tag, replace with next, redraw screen

#Add new tag

tag @e[tag=VSGlobalSettings, tag=VSXPNone] add VSXPWrapDown
tag @e[tag=VSGlobalSettings, tag=VSXPCirc] add VSXPNone
tag @e[tag=VSGlobalSettings, tag=VSXPFlash] add VSXPCirc
tag @e[tag=VSGlobalSettings, tag=VSXPAll] add VSXPFlash

#Wrapdown Handling
tag @e[tag=VSGlobalSettings, tag=VSXPWrapDown] add VSXPAll


tag @e[tag=VSGlobalSettings, tag=VSXPNone] remove VSXPCirc
tag @e[tag=VSGlobalSettings, tag=VSXPCirc] remove VSXPFlash
tag @e[tag=VSGlobalSettings, tag=VSXPFlash] remove VSXPAll
tag @e[tag=VSGlobalSettings, tag=VSXPAll] remove VSXPNone

tag @e[tag=VSGlobalSettings] remove VSXPWrapDown

function vidas5:ui/loadscreen/config/main