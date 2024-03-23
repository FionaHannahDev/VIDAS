#Remove VSCirclesOff, replace with VSCirclesOn, redraw display

tag @e[tag=VSGlobalSettings] remove VSCirclesOff
tag @e[tag=VSGlobalSettings] add VSCirclesOn
function vidas5:ui/loadscreen/config/main