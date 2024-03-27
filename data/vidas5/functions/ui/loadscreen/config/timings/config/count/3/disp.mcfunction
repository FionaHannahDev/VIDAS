#Display value of #1, and up down keys
tellraw @s ["",{"text":"    >","italic":true,"color":"#BDCD72"},{"text":" - ","bold":true,"color":"white"},{"text":" Count 3","color":"#5690CF","hoverEvent":{"action":"show_text","contents":["Upon what tick will count 3 event occur?"]}}," :              ",{"text":"[<<] ","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/config/timings/config/count/3/down"},"hoverEvent":{"action":"show_text","contents":["Lower"]}},{"score":{"name":"VIDAS.Config","objective":"VSCT3"},"color":"blue","hoverEvent":{"action":"show_text","contents":["The tick Count 1 will occur on"]}},{"text":" [>>]","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/config/timings/config/count/3/up"},"hoverEvent":{"action":"show_text","contents":["Higher"]}}]

#If VSCT2 is -1, also display "remove"
#VSCTtest needs to be 0 to do check

scoreboard players set VIDAS.Config VSCTtest 0

execute if score VIDAS.Config VSCT4 < VIDAS.Config VSCTtest run tellraw @s ["",{"text":"    >","italic":true,"color":"#BDCD72"},{"text":" - ","bold":true,"color":"white"},{"text":"       [-] Remove Count ","italic":true,"color":"#C9595A","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/config/timings/config/count/3/remove"},"hoverEvent":{"action":"show_text","contents":["Remove this counter"]}},{"text":"       [+] Add Count ","italic":true,"color":"#6BD287","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/config/timings/config/count/4/down"},"hoverEvent":{"action":"show_text","contents":["Adds another counter"]}},"\n",{"text":"    >","italic":true,"color":"#BDCD72"},{"text":" - ","bold":true,"color":"white"},"\n",{"text":"    >","italic":true,"color":"#BDCD72"},{"text":" - ","bold":true,"color":"white"},"\n",{"text":"    >","italic":true,"color":"#BDCD72"},{"text":" - ","bold":true,"color":"white"},"\n",{"text":"    >","italic":true,"color":"#BDCD72"},{"text":" - ","bold":true,"color":"white"},"\n",{"text":"    >","italic":true,"color":"#BDCD72"},{"text":" - ","bold":true,"color":"white"},"\n",{"text":"    >","italic":true,"color":"#BDCD72"},{"text":" - ","bold":true,"color":"white"},"\n"]
