#THIS IS FOR BAND 1 XP

#This is the master function as there is no way to directly check and pass through a scoreboard function into /xp
#This will call a function that recurses, but it will do so by assigning VSTemp to the player for exactly the drain amount 
#This will then be reduced by 1 each tick until 0 is reached, after which it will cease to loop


#Init VSTemp
scoreboard players operation @s VSTemp = VIDAS.Config VSCXPCosttick2

execute as @s at @s run function vidas5:base/otherfunctions/xp/drain