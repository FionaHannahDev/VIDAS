#Remove VSFlashOn, replace with VSFlashOff, redraw display

tag @e[tag=VSGlobalSettings] remove VSFlashOn
tag @e[tag=VSGlobalSettings] add VSFlashOff
function vidas5:ui/loadscreen/config/main