#Spacer

# Display line if enabled - In this instant also run function to nest another option for if one both or other is active for drain cost param
execute if score VIDAS.Config VSCXPSeperate matches 1 run function vidas5:ui/loadscreen/config/xpmoredetails/seperate/type
#Display line if disabled
execute if score VIDAS.Config VSCXPSeperate matches 0 run tellraw @a[tag=VSConfiging] ["",{"text":"    >","italic":true,"color":"#BDCD72"},{"text":" Different XP","color":"#5690CF","hoverEvent":{"action":"show_text","contents":["Do flash and circles have different XP requirements"]}}," :        ",{"text":"[Enabled] ","bold":false,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/config/xpmoredetails/seperate/on"},"hoverEvent":{"action":"show_text","contents":["Click to enable XP Splitting"]}},{"text":"[Disabled]","bold":true,"color":"#C9595A","hoverEvent":{"action":"show_text","contents":["Splitting already disabled"]}}]
execute if score VIDAS.Config VSCXPSeperate matches 0 run tellraw @a[tag=VSConfiging] " "
execute if score VIDAS.Config VSCXPSeperate matches 0 run tellraw @a[tag=VSConfiging] " "
execute if score VIDAS.Config VSCXPSeperate matches 0 run tellraw @a[tag=VSConfiging] " "