#This shows timning options

#Title page
tellraw @a[tag=VSConfiging] ["",{"text":"-------------------------------------------------","color":"gray"},"\n","/////                                                           \\\\\\\\\\","\n",{"text":"              [","bold":true,"color":"dark_gray"},{"text":"VIDAS ","bold":true,"italic":true,"color":"gray"},{"text":"-","italic":true,"color":"dark_gray"},{"text":" Configuration, Timings","bold":true,"italic":true,"color":"gray"},{"text":"]","bold":true,"color":"dark_gray"}]
tellraw @a[tag=VSConfiging] {"text":"Tip: Flash vidas will always start at Lockout","italic":true,"color":"dark_gray"}
tellraw @a[tag=VSConfiging] " "

#options to include:
#Teleport

function vidas5:ui/loadscreen/config/timings/config/init/current

function vidas5:ui/loadscreen/config/timings/config/countdowns

function vidas5:ui/loadscreen/config/timings/config/lockout/current

function vidas5:ui/loadscreen/config/timings/config/tp/current


#back command
tellraw @a[tag=VSConfiging] {"text":"[back]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/config/main"}}