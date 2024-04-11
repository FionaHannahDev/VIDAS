#TODO - Debug Anims

#Register anims
execute if entity @s[tag=VSAnimReg] at @s run function vidas5:animations/config/circlereg/tick

#Deregister anims
execute if entity @s[tag=VSAnimDereg] at @s run function vidas5:animations/config/circledereg/tick