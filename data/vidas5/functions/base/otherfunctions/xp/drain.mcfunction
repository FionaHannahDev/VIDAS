#This recursivley drains the players XP for however many they currently have in VSTemp
#This function is called by several XP draining methods, and so agnostically changes XP without seeing VSCXPCostTick etc etc variables, Only VSTemp

#Reject criteria
#If the player has no XP, set VSTemp tp 0 and instantly reject
#Update player XP
execute as @s store result score @s VSPlayerXP run data get entity @s XpTotal 1
#Perform rejection
execute if score @s VSPlayerXP matches 0 run function vidas5:base/otherfunctions/xp/rejecteddrain

#If the score VSTemp is still 1 or more, reduce XP by 1, reduce score by 1, recurse if still 1..
execute if score @s VSTemp matches 1.. run xp add @s -1 points
execute if score @s VSTemp matches 1.. run scoreboard players remove @s VSTemp 1
execute if score @s VSTemp matches 1.. run function vidas5:base/otherfunctions/xp/drain

