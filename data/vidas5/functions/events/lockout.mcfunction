tellraw @s[tag=VSDebug] {"text":"Lockout. ","color":"white"}

#ALSO DO XP CHECK AS THIS WILL TAKE BURST COST

tag @s add VSLockin

#Test flash only
execute if score VIDAS.Config VSCXP matches 2 unless score VIDAS.Config VSCXPType matches 0 if entity @s[tag=VSFlash] run function vidas5:base/otherfunctions/xpbursttype/bursttype

#Test flash only
execute if score VIDAS.Config VSCXP matches 1 unless score VIDAS.Config VSCXPType matches 0 if entity @s[tag=VSCirc] run function vidas5:base/otherfunctions/xpbursttype/bursttype

#Full send, bring it all
execute if score VIDAS.Config VSCXP matches 3 unless score VIDAS.Config VSCXPType matches 0 run function vidas5:base/otherfunctions/xpbursttype/bursttype