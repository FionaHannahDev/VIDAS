#This is the thing that calls all of the teleport stuff
#So, Firstly, teleport
tellraw @s {"text":"True Teleport. ","color":"white"}

#Call the teleport function
execute as @s at @s run function vidas5:base/teleports/types/tohub/teleport

#Remove all tags
tag @s remove VSReady
tag @s remove VSCirc
tag @s remove VSLockin
tag @s remove VSFlash

#reset scoreboard tick
scoreboard players set @s VStick 0