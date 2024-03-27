#Run Vidas ready checks on all players online
execute as @a at @s run function vidas5:base/checks/runchecks

#If VIDAS ready, execute tickup / tickdown
execute as @a at @s run function vidas5:base/tick/ticktype