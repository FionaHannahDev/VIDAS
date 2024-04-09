#Run Vidas ready checks on all players online
execute as @a at @s run function vidas5:base/checks/runchecks

#If VIDAS ready, execute tickup / tickdown
execute as @a at @s run function vidas5:base/tick/ticktype

#If crying obsidian tracker 1.., run circle checker #
execute as @a if predicate cryobstrigger at @s run function vidas5:base/circleregistry/checkcircle

#Run circle marker presence checker
execute as @e[type=marker,tag=VSCircle] at @s run function vidas5:base/otherfunctions/presencecheck/check

#Run Circle Config checks
execute as @a[scores={VSLocalCGFTick=1..}] at @s run function vidas5:base/otherfunctions/configureanimations/main