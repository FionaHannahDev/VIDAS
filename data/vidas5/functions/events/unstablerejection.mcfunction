#This occurs if 
#1. An XP drain occurs, and fails because there isnt enough XP left
# AND
#2. The lockin tag is already applied
#This means that even though Xp drain is failing, a teleport would go ahead anyway
#Unstable rejecting means that this does NOT happen, and gives you some customisation

tellraw @s[tag=VSDebug] {"text":"Unstable rejection.","color":"white"}


#DO DAMAGE
#Sonic boom knocks back very slightly
damage @s 10 minecraft:sonic_boom by @s