#Show Configuration options for Burst
tellraw @s ["",{"text":"    >","italic":true,"color":"#BDCD72"},{"text":" Flash XP Cost","color":"#5690CF","hoverEvent":{"action":"show_text","contents":["How much XP is taken from the player when they teleport using Flash VIDAS"]}}," :       ",{"text":"[<<] ","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/config/xpmoredetails/seperate/both/burstdown"},"hoverEvent":{"action":"show_text","contents":["Less XP"]}},{"score":{"name":"VIDAS.Config","objective":"VSCXPCost2"},"color":"blue","hoverEvent":{"action":"show_text","contents":["The amount of XP that teleporting will cost"]}},{"text":" [>>]","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/config/xpmoredetails/seperate/both/burstup"},"hoverEvent":{"action":"show_text","contents":["Next Option"]}}]

tellraw @a[tag=VSConfiging] " "