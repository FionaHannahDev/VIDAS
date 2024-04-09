
execute if score @s[tag=!VSNearby] VSDistance matches ..10 run function vidas5:base/otherfunctions/presencecheck/inrange

#if player outside 15 blocks, and nearby tag, do outrange function and untag them
execute if score @s[tag=VSNearby] VSDistance matches 15.. run function vidas5:base/otherfunctions/presencecheck/outrange


#KNOWN BUG WITH THIS. IF THERE ARE TWO CLOSE TOGETHER, THIS WILL FORCE A CONFLICT