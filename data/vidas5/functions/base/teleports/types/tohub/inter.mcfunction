#Interdimentional TP. This is for when the teleport type is outside same dimention

#Summon marker with tag "VSTeleTarget"
#Tag player with "VSTeleClient"
#Adjust marker pos to VIDAS.Config VShubX/Y/Z values
#As marker, teleport self to correct dim
#Teleport player with correct tag to self
#Kill VSTeleTarget instance. 

summon marker ~ ~ ~ {Tags:["VSTeleTarget"]}

tag @s add VSTeleClient

#Determine execution dimension
execute if score VIDAS.Config VSCdim matches 0 in overworld as @e[type=marker,limit=1,tag=VSTeleTarget] run function vidas5:base/teleports/types/tohub/movemarkerinter
execute if score VIDAS.Config VSCdim matches 1 in the_nether as @e[type=marker,limit=1,tag=VSTeleTarget] run function vidas5:base/teleports/types/tohub/movemarkerinter
execute if score VIDAS.Config VSCdim matches 2 in the_end as @e[type=marker,limit=1,tag=VSTeleTarget] run function vidas5:base/teleports/types/tohub/movemarkerinter
execute if score VIDAS.Config VSCdim matches 3 in versavia:yggdrasil as @e[type=marker,limit=1,tag=VSTeleTarget] run function vidas5:base/teleports/types/tohub/movemarkerinter


tag @s remove VSTeleClient