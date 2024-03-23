#sets the hub location to executors coords

execute store result score VIDAS.Config VSChubX run data get entity @s Pos[0]
execute store result score VIDAS.Config VSChubY run data get entity @s Pos[1]
execute store result score VIDAS.Config VSChubZ run data get entity @s Pos[2]

function vidas5:ui/loadscreen/config/main
