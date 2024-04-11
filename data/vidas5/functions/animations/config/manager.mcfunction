#This is run if an entity is detected with a VSAnimTick score of over 1, and if its a VSCore entity
#Init of any animation should tick down. the animation tags should be:
#VSAnimReg
#VSAnimDereg
#VSAnimConfig

#run tick
function vidas5:animations/config/dotick

#last tick
execute if score @s VSAnimTick matches 1 run function vidas5:animations/config/lasttick


scoreboard players remove @s VSAnimTick 1

#Kill things that need KMS'd
#Btw, the only reason this is needed is because killing the VSCircle marker was causing weird scoreboarding issues with having a custom named entity with a score death, and leaving a scoreboard UUID behind when it dies
#So, kill yourself, circle
kill @e[tag=VSKMS] 

