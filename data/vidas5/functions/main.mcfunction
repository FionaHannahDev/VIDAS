#Run Vidas ready checks on all players online
execute as @a at @s run function vidas5:base/checks/init/runchecks

#If VIDAS ready, execute tickup / tickdown
execute as @a at @s run function vidas5:base/tick/ticktype

#Circle reg / degreg
execute as @a if predicate cryobstrigger at @s run function vidas5:base/checks/registry/register
execute as @a if predicate cryobsdereg at @s run function vidas5:base/checks/deregistry/deregister

#Run circle marker presence checker
execute as @e[type=marker,tag=VSCircle,tag=VSCore] at @s run function vidas5:base/otherfunctions/presencecheck/check

#Run Circle config animation checks