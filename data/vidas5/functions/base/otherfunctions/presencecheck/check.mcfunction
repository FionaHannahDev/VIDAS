#this checks the prescence of a player in the area of any marker entity with VSCircle as its tag

#Inrange is so much closer than outrange to prevent any overlap in detection

#Track player presence with tag VSNearby
#If player within 10 blocks, and no nearby tag, do Inrange function and tag them with VSNearby
execute if entity @a[tag=!VSNearby, distance=0..10] run function vidas5:base/otherfunctions/presencecheck/inrange

#if player outside 10..20 blocks, and nearby tag, do outrange function and untag them
execute if entity @a[tag=VSNearby, distance=10..20] run function vidas5:base/otherfunctions/presencecheck/outrange