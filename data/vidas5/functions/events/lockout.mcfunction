tellraw @s {"text":"Lockout. ","color":"white"}

#ALSO DO XP CHECK AS THIS WILL TAKE BURST COST

execute if score VIDAS.Config VSCXP matches 1.. unless score VIDAS.Config VSCXPType matches 0 run function vidas5:base/otherfunctions/xpbursttype/bursttype