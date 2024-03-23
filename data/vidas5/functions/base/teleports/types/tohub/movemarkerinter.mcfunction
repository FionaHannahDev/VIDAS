#TELEPORTS SELF TO ~~~
#Store the coords to the marker pos
#Execute position as marker run tp player ~ ~ ~
#kill myself

#Tp to here in dim
tp @s ~ ~ ~

#store pos in marker
execute store result entity @s Pos[0] double 1 run scoreboard players get VIDAS.Config VSChubX
execute store result entity @s Pos[1] double 1 run scoreboard players get VIDAS.Config VSChubY
execute store result entity @s Pos[2] double 1 run scoreboard players get VIDAS.Config VSChubZ

#Execute TP as me
execute positioned as @s run tp @a[tag=VSTeleClient] ~ ~ ~

#KMS
kill @s