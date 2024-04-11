tag @s add VSAnimDereg
scoreboard players set @s VSAnimTick 500

summon marker ~ ~ ~ {Tags:["VSCircle","VSDereg","VSTempAnim","VSTHISTICK"]}

scoreboard players set @e[tag=VSTHISTICK] VSAnimTick 500
tag @e[tag=VSTHISTICK] remove VSTHISTICK
