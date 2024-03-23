#sets the hub location to executors coords

execute store result score VIDAS.Config VSCconfigX run data get entity @s Pos[0]
execute store result score VIDAS.Config VSCconfigY run data get entity @s Pos[1]
execute store result score VIDAS.Config VSCconfigZ run data get entity @s Pos[2]

function vidas5:ui/loadscreen/config/main
