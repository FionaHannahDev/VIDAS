#REJECTED DRAIN.
#0 VSTemp
scoreboard players set @s VSTemp 0
#Run reject event
execute as @s[tag=!VSLockin] at @s run function vidas5:events/reject
execute as @s[tag=VSLockin] at @s run function vidas5:events/unstablerejection