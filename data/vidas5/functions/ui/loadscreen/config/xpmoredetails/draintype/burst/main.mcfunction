#burst
tellraw @s ["",{"text":"    >","italic":true,"color":"#BDCD72"},{"text":" Cost Type","color":"#5690CF","hoverEvent":{"action":"show_text","contents":["How is the XP cost extracted from the player?"]}}," :       ",{"text":"[<<]","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/config/xpmoredetails/draintype/down"},"hoverEvent":{"action":"show_text","contents":["Previous Option"]}},{"text":"[Upon Teleport]","color":"#B88DD3","hoverEvent":{"action":"show_text","contents":["The XP will be taken as a single amount when teleport occurs"]}},{"text":"[>>]","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/config/xpmoredetails/draintype/up"},"hoverEvent":{"action":"show_text","contents":["Next Option"]}}]

tellraw @a[tag=VSConfiging] " "

#Show Configuration options for Burst
tellraw @s ["",{"text":"    >","italic":true,"color":"#BDCD72"},{"text":" Teleport XP Cost","color":"#5690CF","hoverEvent":{"action":"show_text","contents":["How much XP is taken from the player when they teleport"]}}," :       ",{"text":"[<<] ","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/config/xpmoredetails/draintype/bothopts/burstdown"},"hoverEvent":{"action":"show_text","contents":["Less XP"]}},{"score":{"name":"VIDAS.Config","objective":"VSCXPCost"},"color":"blue","hoverEvent":{"action":"show_text","contents":["The amount of XP that teleporting will cost"]}},{"text":" [>>]","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/config/xpmoredetails/draintype/bothopts/burstup"},"hoverEvent":{"action":"show_text","contents":["Next Option"]}}]

tellraw @a[tag=VSConfiging] " "
