#DETERMINE TELEPORT TYPE

#Teleport within dimension
execute as @s at @s if score VIDAS.Config VSCdim matches 0 if dimension overworld run tag @s add VSIntra
execute as @s at @s if score VIDAS.Config VSCdim matches 2 if dimension the_nether run tag @s add VSIntra
execute as @s at @s if score VIDAS.Config VSCdim matches 3 if dimension the_end run tag @s add VSIntra
execute as @s at @s if score VIDAS.Config VSCdim matches 4 if dimension versavia:yggdrasil run tag @s add VSIntra

#If they have the intra tag, execute intradimensional TP.
#If they do not, interdimentional that TP. 

execute as @s[tag=VSIntra] at @s run function vidas5:base/teleports/types/tohub/intra
execute as @s[tag=!VSIntra] at @s run function vidas5:base/teleports/types/tohub/inter

#removes intra tag
tag @s remove VSIntra