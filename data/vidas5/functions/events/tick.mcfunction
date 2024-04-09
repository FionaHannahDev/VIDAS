#Run the XP drain checker ONLY if the tag already exists with the server config
playsound block.stone.hit master @s[tag=VSDebug] ~ ~ ~ 0.1 2 0.1

#Is Flash drain only?
#Ensure flash tag
execute if score VIDAS.Config VSCXP matches 2 unless score VIDAS.Config VSCXPType matches 2 if entity @s[tag=VSFlash] run function vidas5:base/otherfunctions/xpdraintype/draintype

#Is Circ drain only?
#ensure circ tag
execute if score VIDAS.Config VSCXP matches 1 unless score VIDAS.Config VSCXPType matches 2 if entity @s[tag=VSCirc] run function vidas5:base/otherfunctions/xpdraintype/draintype

#Is all? Full send, only validate drain type
execute if score VIDAS.Config VSCXP matches 3 unless score VIDAS.Config VSCXPType matches 2 run function vidas5:base/otherfunctions/xpdraintype/draintype
