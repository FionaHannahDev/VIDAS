#Remove VSFlashOff, replace with VSFlashOn, redraw display

tag @e[tag=VSGlobalSettings] remove VSFlashOff
tag @e[tag=VSGlobalSettings] add VSFlashOn
function vidas5:ui/loadscreen/config/main