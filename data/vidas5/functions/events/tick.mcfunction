#Run the XP drain checker ONLY if the tag already exists with the server config
playsound block.stone.hit master @s ~ ~ ~ 0.1 2 0.1 
execute if score VIDAS.Config VSCXP matches 1.. unless score VIDAS.Config VSCXPType matches 1 run function vidas5:base/otherfunctions/xpdraintype/draintype