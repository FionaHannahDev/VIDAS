#No obsidian will be present as it has just been broken 
#Reset validitytracker
tag @s remove VSValidCirc

#Raytrace
execute as @s at @s anchored eyes positioned ^ ^ ^0.25 run function vidas5:base/circlederegister/trace/trace
execute as @s at @s anchored eyes positioned ^ ^ ^0.5 run function vidas5:base/circlederegister/trace/trace
execute as @s at @s anchored eyes positioned ^ ^ ^0.75 run function vidas5:base/circlederegister/trace/trace
execute as @s at @s anchored eyes positioned ^ ^ ^1 run function vidas5:base/circlederegister/trace/trace
execute as @s at @s anchored eyes positioned ^ ^ ^1.25 run function vidas5:base/circlederegister/trace/trace
execute as @s at @s anchored eyes positioned ^ ^ ^1.5 run function vidas5:base/circlederegister/trace/trace
execute as @s at @s anchored eyes positioned ^ ^ ^1.75 run function vidas5:base/circlederegister/trace/trace
execute as @s at @s anchored eyes positioned ^ ^ ^2 run function vidas5:base/circlederegister/trace/trace
execute as @s at @s anchored eyes positioned ^ ^ ^2.25 run function vidas5:base/circlederegister/trace/trace
execute as @s at @s anchored eyes positioned ^ ^ ^2.5 run function vidas5:base/circlederegister/trace/trace
execute as @s at @s anchored eyes positioned ^ ^ ^2.75 run function vidas5:base/circlederegister/trace/trace
execute as @s at @s anchored eyes positioned ^ ^ ^3 run function vidas5:base/circlederegister/trace/trace
execute as @s at @s anchored eyes positioned ^ ^ ^3.25 run function vidas5:base/circlederegister/trace/trace
execute as @s at @s anchored eyes positioned ^ ^ ^3.5 run function vidas5:base/circlederegister/trace/trace
execute as @s at @s anchored eyes positioned ^ ^ ^3.75 run function vidas5:base/circlederegister/trace/trace
execute as @s at @s anchored eyes positioned ^ ^ ^4 run function vidas5:base/circlederegister/trace/trace

#If raytrace is good, VSValidCirc will be enabled
execute if entity @s[tag=VSValidCirc] at @s run function vidas5:base/circlederegister/success

tag @s remove VSValidCirc
#Regardless of success, revert counter to 0
scoreboard players set @s VSCryObsidMined 0