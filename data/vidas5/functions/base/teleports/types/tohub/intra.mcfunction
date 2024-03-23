#Intradimensional TP. This is for when the teleport type is within dimensions

#Summon marker with tag "VSTeleTarget"
#Tag player with "VSTeleClient"
#Adjust marker pos to VIDAS.Config VShubX/Y/Z values
#as Marker with VSTeleTarget, teleport all players with VSTeleClient to self
#Kill VSTeleTarget instance. 

summon marker ~ ~ ~ {Tags:["VSTeleTarget"]}

tag @s add VSTeleClient

function vidas5:base/teleports/types/movemarker

execute as @e[type=marker,tag=VSTeleTarget,limit=1] at @s run tp @a[tag=VSTeleClient,limit=1] @s


kill @e[tag=VSTeleTarget]

tag @s remove VSTeleClient