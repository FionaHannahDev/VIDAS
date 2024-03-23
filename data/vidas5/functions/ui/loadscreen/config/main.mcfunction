#Display Config Text only to people with this tag
tag @s add VSConfiging

#Header Line
tellraw @a[tag=VSConfiging] ["",{"text":"[","bold":true,"color":"dark_gray"},{"text":"VIDAS ","bold":true,"italic":true,"color":"gray"},{"text":"-","italic":true,"color":"dark_gray"},{"text":" Configuration","bold":true,"italic":true,"color":"gray"},{"text":"]","bold":true,"color":"dark_gray"}]

#Circles on / off
function vidas5:ui/loadscreen/config/circles/enabledisable

#Flash Vidas on / off
function vidas5:ui/loadscreen/config/flash/enabledisable

#Teleport Uses XP
function vidas5:ui/loadscreen/config/xp/current

#Teleport uses XP


#Config Exit
tellraw @a[tag=VSConfiging] ["",{"text":"    > ","italic":true,"color":"#BDCD72"},{"text":"[Exit]","color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove VSConfiging"},"hoverEvent":{"action":"show_text","contents":["If you get spammed while an admin is working on commands, click here"]}}]

#JSON 
#{"jformat":8,"jobject":[{"bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"dark_gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"["},{"bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"VIDAS "},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"dark_gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"-"},{"bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":" Configuration"},{"bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"dark_gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"]"}],"command":"/tellraw @p %s","jtemplate":"tellraw"}
#