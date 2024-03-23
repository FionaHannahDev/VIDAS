#Remove VSCirclesOn, replace with VSCirclesOff, redraw display

tag @e[tag=VSGlobalSettings] remove VSCirclesOn
tag @e[tag=VSGlobalSettings] add VSCirclesOff
function vidas5:ui/loadscreen/config/main