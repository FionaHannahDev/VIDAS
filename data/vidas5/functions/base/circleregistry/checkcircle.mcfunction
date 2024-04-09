#Check to see if there is indeed a circle there in this function, and action from there
#A valid check will apply the tag VSValidCirc
#This is removed before, and after these checks

tag @s remove VSValidCirc
#This function will check every half block, up until 5 blocks distant, ray tracing from the eyes
#If any one of these detects a circle, test is successful
execute as @s at @s anchored eyes positioned ^ ^ ^0.25 run function vidas5:base/circleregistry/validate
execute as @s at @s anchored eyes positioned ^ ^ ^0.5 run function vidas5:base/circleregistry/validate
execute as @s at @s anchored eyes positioned ^ ^ ^0.75 run function vidas5:base/circleregistry/validate
execute as @s at @s anchored eyes positioned ^ ^ ^1 run function vidas5:base/circleregistry/validate
execute as @s at @s anchored eyes positioned ^ ^ ^1.25 run function vidas5:base/circleregistry/validate
execute as @s at @s anchored eyes positioned ^ ^ ^1.5 run function vidas5:base/circleregistry/validate
execute as @s at @s anchored eyes positioned ^ ^ ^1.75 run function vidas5:base/circleregistry/validate
execute as @s at @s anchored eyes positioned ^ ^ ^2 run function vidas5:base/circleregistry/validate
execute as @s at @s anchored eyes positioned ^ ^ ^2.25 run function vidas5:base/circleregistry/validate
execute as @s at @s anchored eyes positioned ^ ^ ^2.5 run function vidas5:base/circleregistry/validate
execute as @s at @s anchored eyes positioned ^ ^ ^2.75 run function vidas5:base/circleregistry/validate
execute as @s at @s anchored eyes positioned ^ ^ ^3 run function vidas5:base/circleregistry/validate
execute as @s at @s anchored eyes positioned ^ ^ ^3.25 run function vidas5:base/circleregistry/validate
execute as @s at @s anchored eyes positioned ^ ^ ^3.5 run function vidas5:base/circleregistry/validate
execute as @s at @s anchored eyes positioned ^ ^ ^3.75 run function vidas5:base/circleregistry/validate
execute as @s at @s anchored eyes positioned ^ ^ ^4 run function vidas5:base/circleregistry/validate

#If raytrace is good, VSValidCirc will be enabled
execute if entity @s[tag=VSValidCirc] at @s run function vidas5:base/circleregistry/success/setupcircle

tag @s remove VSValidCirc
#Regardless of success, revert counter to 0
scoreboard players set @s VSCryObsidPlaced 0