#Configure button for custom VIDAS timings

tellraw @a[tag=VSConfiging] ["",{"text":"    >","italic":true,"color":"#BDCD72"},{"text":" VIDAS Timings","color":"#5690CF","hoverEvent":{"action":"show_text","contents":["How long each stage of VIDAS takes to execute (in ticks)"]}}," :           ",{"text":"[Configure] ","bold":true,"color":"#ECA651","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/config/timings/config/main"},"hoverEvent":{"action":"show_text","contents":["Configure the VIDAS timings"]}}]
