#The resting tick is 0
#-1 VStick should NEVER occur. 
#Ticks will run from 0(resting). VSReady will tick up, not tick being 1 or above. Tick will run until teleportation finalisation is called at pre configured tick duration
#tickup will have function calls for all events, but tickdown will only have "init"

#If we have VSReady, tick up
execute if entity @s[tag=VSReady] run function vidas5:base/tick/tickup

#Also perform tickup if VSReady is not present, but VSLockout is
execute if entity @s[tag=!VSReady,tag=VSLockin] run function vidas5:base/tick/tickup

#but if we have ticks, but no VSReady, tick down. Do single check here, and if score, check tag. This limits the search population and means for the majority of the time, no further execution needed
execute if score @s VStick matches 1.. run function vidas5:base/tick/tickdowncheck