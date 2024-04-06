#Determines between FLASH drain and Circle burst. Also determines if there should be any split in this or wether to just use drain / cost 1 only

#Is there a split?
execute if score VIDAS.Config VSCXPSeperate matches 1 run function vidas5:base/otherfunctions/xpbursttype/splitxp
#No split? Burst the base. as this is only ever called when burst, not drain
execute if score VIDAS.Config VSCXPSeperate matches 0 run function vidas5:base/otherfunctions/xp/burst
