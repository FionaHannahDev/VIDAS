#Run initial Crying obsidian check
#If youre on crying obsidian, run further checks - which will apply VSReady tag
#If youre not on crying obsidian, or the lockin tag is not applied, remove this tag

#Checks circle, checks flash - IF theyre enabled by server config. Also ensure VSReady is not already applied. If this IS already applied, dont run these tests. 
execute if score VIDAS.Config VSCCircles matches 1 as @s[tag=!VSReady] at @s if block ~ ~-1 ~ crying_obsidian run function vidas5:base/checks/init/circle
execute if score VIDAS.Config VSCFlash matches 1 as @s[tag=!VSReady] at @s if block ~ ~-1 ~ crying_obsidian run function vidas5:base/checks/init/flash

#If no crying obsidian, or no lockin, remove tag
execute as @s[tag=!VSLockin] at @s unless block ~ ~-1 ~ crying_obsidian run function vidas5:base/checks/init/removetptags
