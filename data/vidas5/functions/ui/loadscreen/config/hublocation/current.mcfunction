#Display current location and update button if within radius

#case: Location is outside 1-2 block radius
tellraw @a[tag=VSConfiging] ["",{"text":"    >","italic":true,"color":"#BDCD72"},{"text":" Central Hub Location","color":"#5690CF","hoverEvent":{"action":"show_text","contents":["Can you get on a circle and teleport or not."]}}," : ",{"text":"[Set to Here] ","bold":true,"color":"#ECA651","clickEvent":{"action":"run_command","value":"PLACEHOLDER SET HERE COMMAND"},"hoverEvent":{"action":"show_text","contents":["Set the Central Hub location to your current position"]}},{"text":"(Current Location: loc)","italic":true,"color":"#58C4C9","hoverEvent":{"action":"show_text","contents":["Current Location of Central Hub Location"]}}]

#JSON
#{"jformat":8,"jobject":[{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"#BDCD72","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"    >"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"#5690CF","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"show_text","hover_event_value":"","hover_event_children":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"Can you get on a circle and teleport or not."}],"text":" Central Hub Location"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":" : "},{"bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"#ECA651","insertion":"","click_event_type":"run_command","click_event_value":"PLACEHOLDER SET HERE COMMAND","hover_event_type":"show_text","hover_event_value":"","hover_event_children":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"Set the Central Hub location to your current position"}],"text":"[Set to Here] "},{"bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"#58C4C9","insertion":"","click_event_type":"none","click_event_value":"PLACEHOLDER CIRCLE DISABLE COMMAND","hover_event_type":"show_text","hover_event_value":"","hover_event_children":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_children":[],"text":"Current Location of Central Hub Location"}],"text":"(Current Location: loc)"}],"command":"tellraw @a %s","jtemplate":"tellraw"}
#