#this checks the prescence of a player in the area of any marker entity with VSCircle as its tag

#Firstly, check the range
#ONLY execute if CLOSEST PLAYER to @s is within 30 blocks
execute if entity @p[distance=..30] run function vidas5:base/otherfunctions/presencecheck/distancecheck/getrange

#If that condition triggers, VSTracking is applied to marker with VSCircle.
#If nearest player is outside this range, remove tracking marker
execute as @s[tag=VSTracking] if entity @p[distance=30..] run tag @s remove VSTracking

#If VSCircle has VSTracking, apply VSNearby if VSDistance scoreboard value is under 10. 
#Remove it if VSNearby is applied and VSDistance is above 20.

function vidas5:base/otherfunctions/presencecheck/track