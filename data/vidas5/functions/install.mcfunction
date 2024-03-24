#Variable Initiation
scoreboard objectives add VStick dummy

#Config Variables
#globalsettings binary for fakeplayer
scoreboard objectives add VSCCircles dummy 
scoreboard objectives add VSCFlash dummy
scoreboard objectives add VSCXP dummy
scoreboard objectives add VSChubX dummy
scoreboard objectives add VSChubY dummy
scoreboard objectives add VSChubZ dummy
scoreboard objectives add VSCconfigX dummy
scoreboard objectives add VSCconfigY dummy
scoreboard objectives add VSCconfigZ dummy
scoreboard objectives add VSCdim dummy
scoreboard objectives add VSCXPType dummy
scoreboard objectives add VSCXPSeperate dummy
scoreboard objectives add VSCXPCost dummy
scoreboard objectives add VSCXPCost2 dummy


#Set up fakeplayer with settings if they dont already exist
execute unless score VIDAS.Config VSCCircles = VIDAS.Config VSCCircles run scoreboard players set VIDAS.Config VSCCircles 1
execute unless score VIDAS.Config VSCFlash = VIDAS.Config VSCFlash run scoreboard players set VIDAS.Config VSCFlash 1
execute unless score VIDAS.Config VSCXP = VIDAS.Config VSCXP run scoreboard players set VIDAS.Config VSCXP 0 

execute unless score VIDAS.Config VSChubX = VIDAS.Config VSChubX run scoreboard players set VIDAS.Config VSChubX 0
execute unless score VIDAS.Config VSChubY = VIDAS.Config VSChubY run scoreboard players set VIDAS.Config VSChubY 0
execute unless score VIDAS.Config VSChubZ = VIDAS.Config VSChubZ run scoreboard players set VIDAS.Config VSChubZ 0

execute unless score VIDAS.Config VSCconfigX = VIDAS.Config VSCconfigX run scoreboard players set VIDAS.Config VSCconfigX 0
execute unless score VIDAS.Config VSCconfigY = VIDAS.Config VSCconfigY run scoreboard players set VIDAS.Config VSCconfigY 0
execute unless score VIDAS.Config VSCconfigZ = VIDAS.Config VSCconfigZ run scoreboard players set VIDAS.Config VSCconfigZ 0

execute unless score VIDAS.Config VSCdim = VIDAS.Config VSCdim run scoreboard players set VIDAS.Config VSCdim 0

#Extra options
#XP
execute unless score VIDAS.Config VSCXPType = VIDAS.Config VSCXPType run scoreboard players set VIDAS.Config VSCXPType 0
execute unless score VIDAS.Config VSCXPSeperate = VIDAS.Config VSCXPSeperate run scoreboard players set VIDAS.Config VSCXPSeperate 0
execute unless score VIDAS.Config VSCXPCost = VIDAS.Config VSCXPCost run scoreboard players set VIDAS.Config VSCXPCost 0
execute unless score VIDAS.Config VSCXPCost2 = VIDAS.Config VSCXPCost2 run scoreboard players set VIDAS.Config VSCXPCost2 0


#VIDAS bootup announcement
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"V","bold":true,"italic":true,"color":"gray"},{"text":"ersavian ","italic":true,"color":"dark_gray"},{"text":"I","bold":true,"italic":true,"color":"gray"},{"text":"nter ","italic":true,"color":"dark_gray"},{"text":"D","bold":true,"italic":true,"color":"gray"},{"text":"imentional ","italic":true,"color":"dark_gray"},{"text":"A","bold":true,"italic":true,"color":"gray"},{"text":"ccess ","italic":true,"color":"dark_gray"},{"text":"S","bold":true,"italic":true,"color":"gray"},{"text":"ystem","italic":true,"color":"dark_gray"},{"text":"]","color":"dark_gray"},"\n",{"text":"    Vidas is now ","italic":true,"color":"#A4C5D0"},{"text":"loaded.","italic":true,"color":"#6BD287"},"\n",{"text":"    Ready for Configuration.","italic":true,"color":"#A4C5D0"},"\n",{"text":"        >","italic":true,"color":"#BDCD72"},{"text":"... Configure VIDAS","italic":true,"underlined":true,"color":"#5672CF","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/config/main"}},"\n",{"text":"        >","italic":true,"color":"#BDCD72"},{"text":"... About VIDAS","italic":true,"underlined":true,"color":"#5672CF","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/about/main"}},"\n",{"text":"        >","italic":true,"color":"#BDCD72"},{"text":"... Credits","italic":true,"underlined":true,"color":"#5672CF","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/credits/main"},"hoverEvent":{"action":"show_text","contents":["Hello"]}}]

#JSON for editing at https://www.minecraftjson.com/
#{"jformat":8,"jobject":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"dark_gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"["},{"bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"V"},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"dark_gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"ersavian "},{"bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"I"},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"dark_gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"nter "},{"bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"D"},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"dark_gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"imentional "},{"bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"A"},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"dark_gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"ccess "},{"bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"S"},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"dark_gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"ystem"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"dark_gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"]"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"\n"},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"#A4C5D0","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"    Vidas is now "},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"#6BD287","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"loaded."},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"\n"},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"#A4C5D0","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"    Ready for Configuration."},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"\n"},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"#BDCD72","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"        >"},{"bold":false,"italic":true,"underlined":true,"strikethrough":false,"obfuscated":false,"font":null,"color":"#5672CF","insertion":"","click_event_type":"run_command","click_event_value":"say PLACEHOLDER CONFIGURATION COMMAND","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"... Configure VIDAS"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"\n"},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"#BDCD72","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"        >"},{"bold":false,"italic":true,"underlined":true,"strikethrough":false,"obfuscated":false,"font":null,"color":"#5672CF","insertion":"","click_event_type":"run_command","click_event_value":"say PLACEHOLDER ABOUT COMMAND","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"... About VIDAS"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"\n"},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"#BDCD72","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"        >"},{"bold":false,"italic":true,"underlined":true,"strikethrough":false,"obfuscated":false,"font":null,"color":"#5672CF","insertion":"","click_event_type":"run_command","click_event_value":"say PLACEHOLDER CREDITS","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"... Credits"}],"command":"/tellraw @p %s","jtemplate":"tellraw"}
#