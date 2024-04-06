#There is a split of XP, so we need to know if this is flashed vidas or base

#Are we flashing?
execute if entity @s[tag=VSFlash] run function vidas5:base/otherfunctions/xp/xpdrain2

#are we CIRCing?
execute if entity @s[tag=VSCirc] run function vidas5:base/otherfunctions/xp/xpdrain