#Takes the position of the VIDAS.CONFIG hub and moves marker to those coords

execute store result entity @e[tag=VSTeleTarget,type=marker,limit=1] Pos[0] double 1 run scoreboard players get VIDAS.Config VSChubX
execute store result entity @e[tag=VSTeleTarget,type=marker,limit=1] Pos[1] double 1 run scoreboard players get VIDAS.Config VSChubY
execute store result entity @e[tag=VSTeleTarget,type=marker,limit=1] Pos[2] double 1 run scoreboard players get VIDAS.Config VSChubZ