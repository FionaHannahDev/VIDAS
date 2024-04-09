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
scoreboard objectives add VSCXPCosttick dummy
scoreboard objectives add VSCXPCosttick2 dummy

#Timings
#Teleport
scoreboard objectives add VSCTTP dummy
#TP Absolute - this is a hidden variable and is configured through VSCTTP. It is always 5 ticks higher
scoreboard objectives add VSCTPAbsolute dummy
#Lockout
scoreboard objectives add VSCTLockout dummy
#Counts - set to -1. Only show [+] if another row is required
scoreboard objectives add VSCT1 dummy
scoreboard objectives add VSCT2 dummy
scoreboard objectives add VSCT3 dummy
scoreboard objectives add VSCT4 dummy
scoreboard objectives add VSCT5 dummy
scoreboard objectives add VSCT6 dummy
scoreboard objectives add VSCT7 dummy
scoreboard objectives add VSCT8 dummy
scoreboard objectives add VSCT9 dummy
scoreboard objectives add VSCT10 dummy
#Initiate
scoreboard objectives add VSCTInit dummy

#This is a variable. It holds the validation data for the next highest tick
scoreboard objectives add VSCTtest dummy
#Rotation variable for the CFG animation tick
scoreboard objectives add VSRotate dummy

#These are difference calculations based on XYZ of target nearestplayer and marker with VSCircle
scoreboard objectives add VSX dummy
scoreboard objectives add VSY dummy
scoreboard objectives add VSZ dummy
#Diff
scoreboard objectives add VSDX dummy
scoreboard objectives add VSDY dummy
scoreboard objectives add VSDZ dummy
#Sum dif
scoreboard objectives add VSDsum dummy
#SQRT estimations
scoreboard objectives add VSSQRTI dummy
scoreboard objectives add VSSQRTX dummy
scoreboard objectives add VSDistance dummy


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
execute unless score VIDAS.Config VSCXPCosttick = VIDAS.Config VSCXPCosttick run scoreboard players set VIDAS.Config VSCXPCosttick 0
execute unless score VIDAS.Config VSCXPCosttick2 = VIDAS.Config VSCXPCosttick2 run scoreboard players set VIDAS.Config VSCXPCosttick2 0

#Timing. The below is the default config. -1 means not used. 
execute unless score VIDAS.Config VSCTTP = VIDAS.Config VSCTTP run scoreboard players set VIDAS.Config VSCTTP 140
execute unless score VIDAS.Config VSCTTAbsolute = VIDAS.Config VSCTTAbsolute run scoreboard players set VIDAS.Config VSCTTAbsolute 145
execute unless score VIDAS.Config VSCTLockout = VIDAS.Config VSCTLockout run scoreboard players set VIDAS.Config VSCTLockout 130
execute unless score VIDAS.Config VSCT1 = VIDAS.Config VSCT1 run scoreboard players set VIDAS.Config VSCT1 40
execute unless score VIDAS.Config VSCT2 = VIDAS.Config VSCT2 run scoreboard players set VIDAS.Config VSCT2 60
execute unless score VIDAS.Config VSCT3 = VIDAS.Config VSCT3 run scoreboard players set VIDAS.Config VSCT3 80
execute unless score VIDAS.Config VSCT4 = VIDAS.Config VSCT4 run scoreboard players set VIDAS.Config VSCT4 100
execute unless score VIDAS.Config VSCT5 = VIDAS.Config VSCT5 run scoreboard players set VIDAS.Config VSCT5 120
execute unless score VIDAS.Config VSCT6 = VIDAS.Config VSCT6 run scoreboard players set VIDAS.Config VSCT6 -1
execute unless score VIDAS.Config VSCT7 = VIDAS.Config VSCT7 run scoreboard players set VIDAS.Config VSCT7 -1
execute unless score VIDAS.Config VSCT8 = VIDAS.Config VSCT8 run scoreboard players set VIDAS.Config VSCT8 -1
execute unless score VIDAS.Config VSCT9 = VIDAS.Config VSCT9 run scoreboard players set VIDAS.Config VSCT9 -1
execute unless score VIDAS.Config VSCT10 = VIDAS.Config VSCT10 run scoreboard players set VIDAS.Config VSCT10 -1
execute unless score VIDAS.Config VSCTInit = VIDAS.Config VSCTInit run scoreboard players set VIDAS.Config VSCTInit 1


#Player Internal vars
#Variable Initiation
scoreboard objectives add VStick dummy
#This is a temp itterative which holds the XP drain and burst values for the player for the recursive XP function
scoreboard objectives add VSTemp dummy
#Holds XP value. Updates on check
scoreboard objectives add VSPlayerXP dummy
#Crying Obsidian Placed
scoreboard objectives add VSCryObsidPlaced minecraft.used:crying_obsidian
#Crying Obsidian Mined
scoreboard objectives add VSCryObsidMined minecraft.mined:crying_obsidian
#Configure Animation Tick
scoreboard objectives add VSLocalCGFTick dummy



#VERSION SIGNALING
#VSLastVersion signals the version that they are on.
#VSLastVersion 
scoreboard objectives add VSLastVersion dummy

#VIDAS bootup announcement
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"V","bold":true,"italic":true,"color":"gray"},{"text":"ersavian ","italic":true,"color":"dark_gray"},{"text":"I","bold":true,"italic":true,"color":"gray"},{"text":"nter ","italic":true,"color":"dark_gray"},{"text":"D","bold":true,"italic":true,"color":"gray"},{"text":"imentional ","italic":true,"color":"dark_gray"},{"text":"A","bold":true,"italic":true,"color":"gray"},{"text":"ccess ","italic":true,"color":"dark_gray"},{"text":"S","bold":true,"italic":true,"color":"gray"},{"text":"ystem","italic":true,"color":"dark_gray"},{"text":"]","color":"dark_gray"},"\n",{"text":"    Vidas is now ","italic":true,"color":"#A4C5D0"},{"text":"loaded.","italic":true,"color":"#6BD287"},"\n",{"text":"    Ready for Configuration.","italic":true,"color":"#A4C5D0"},"\n",{"text":"        >","italic":true,"color":"#BDCD72"},{"text":"... Configure VIDAS","italic":true,"underlined":true,"color":"#5672CF","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/config/main"}},"\n",{"text":"        >","italic":true,"color":"#BDCD72"},{"text":"... About VIDAS","italic":true,"underlined":true,"color":"#5672CF","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/about/main"}},"\n",{"text":"        >","italic":true,"color":"#BDCD72"},{"text":"... Credits","italic":true,"underlined":true,"color":"#5672CF","clickEvent":{"action":"run_command","value":"/function vidas5:ui/loadscreen/credits/main"},"hoverEvent":{"action":"show_text","contents":["Hello"]}}]

#JSON for editing at https://www.minecraftjson.com/
#{"jformat":8,"jobject":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"dark_gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"["},{"bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"V"},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"dark_gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"ersavian "},{"bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"I"},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"dark_gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"nter "},{"bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"D"},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"dark_gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"imentional "},{"bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"A"},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"dark_gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"ccess "},{"bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"S"},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"dark_gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"ystem"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"dark_gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"]"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"\n"},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"#A4C5D0","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"    Vidas is now "},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"#6BD287","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"loaded."},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"\n"},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"#A4C5D0","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"    Ready for Configuration."},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"\n"},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"#BDCD72","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"        >"},{"bold":false,"italic":true,"underlined":true,"strikethrough":false,"obfuscated":false,"font":null,"color":"#5672CF","insertion":"","click_event_type":"run_command","click_event_value":"say PLACEHOLDER CONFIGURATION COMMAND","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"... Configure VIDAS"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"\n"},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"#BDCD72","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"        >"},{"bold":false,"italic":true,"underlined":true,"strikethrough":false,"obfuscated":false,"font":null,"color":"#5672CF","insertion":"","click_event_type":"run_command","click_event_value":"say PLACEHOLDER ABOUT COMMAND","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"... About VIDAS"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"\n"},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"#BDCD72","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"        >"},{"bold":false,"italic":true,"underlined":true,"strikethrough":false,"obfuscated":false,"font":null,"color":"#5672CF","insertion":"","click_event_type":"run_command","click_event_value":"say PLACEHOLDER CREDITS","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"... Credits"}],"command":"/tellraw @p %s","jtemplate":"tellraw"}
#