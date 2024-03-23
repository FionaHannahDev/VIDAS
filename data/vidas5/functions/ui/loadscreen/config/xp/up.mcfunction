#Determine current tag, replace with previous, redraw screen

#Add new tag

tag @e[tag=VSGlobalSettings, tag=VSXPAll] add VSXPWrapUp
tag @e[tag=VSGlobalSettings, tag=VSXPFlash] add VSXPAll
tag @e[tag=VSGlobalSettings, tag=VSXPCirc] add VSXPFlash
tag @e[tag=VSGlobalSettings, tag=VSXPNone] add VSXPCirc

#Wrap Prevention
tag @e[tag=VSGlobalSettings, tag=VSXPWrapUp] add VSXPNone

tag @e[tag=VSGlobalSettings, tag=VSXPNone] remove VSXPAll
tag @e[tag=VSGlobalSettings, tag=VSXPCirc] remove VSXPNone
tag @e[tag=VSGlobalSettings, tag=VSXPFlash] remove VSXPCirc
tag @e[tag=VSGlobalSettings, tag=VSXPAll] remove VSXPFlash

tag @e[tag=VSGlobalSettings] remove VSXPWrapUp

function vidas5:ui/loadscreen/config/main