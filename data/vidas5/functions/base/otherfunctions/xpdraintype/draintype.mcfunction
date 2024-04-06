#Determines between FLASH drain and Circle drain. Also determines if there should be any split in this or wether to just use drain / cost 1 only

#Is there a split?
execute if score VIDAS.Config VSCXPSeperate matches 1 run function vidas5:base/otherfunctions/xpdraintype/splitxp
#No split? Drain the base. as this is only ever called when drain, not burst
execute if score VIDAS.Config VSCXPSeperate matches 0 run function vidas5:base/otherfunctions/xp/xpdrain
