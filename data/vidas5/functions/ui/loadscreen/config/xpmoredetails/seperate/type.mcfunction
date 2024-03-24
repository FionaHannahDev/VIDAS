#Determines type and displays enabled signing
tellraw @s ["",{"text":"    >","italic":true,"color":"#BDCD72"},{"text":" Different XP","color":"#5690CF","hoverEvent":{"action":"show_text","contents":["Do flash and circles have different XP requirements"]}}," :        ",{"text":"[Enabled] ","bold":true,"color":"#6BD287","hoverEvent":{"action":"show_text","contents":["Already Enabled"]}},{"text":"[Disabled]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/config/xpmoredetails/seperate/off"},"hoverEvent":{"action":"show_text","contents":["Click to XP splitting"]}}]

tellraw @a[tag=VSConfiging] " "
#Drain
execute if score VIDAS.Config VSCXPType matches 0 run function vidas5:ui/loadscreen/config/xpmoredetails/seperate/drain/main

#Burst
execute if score VIDAS.Config VSCXPType matches 1 run function vidas5:ui/loadscreen/config/xpmoredetails/seperate/burst/main

#Both
execute if score VIDAS.Config VSCXPType matches 2 run function vidas5:ui/loadscreen/config/xpmoredetails/seperate/both/main

