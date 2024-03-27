tellraw @s {"text":"Initiation. ","color":"white"}

#Init calls a fork
#If VSFlash is on, adjust score and instead run LOCKOUT and FLASH events
#Set to lockout
execute if entity @s[tag=VSFlash] run scoreboard players operation @s VStick = VIDAS.Config VSCTLockout
execute if entity @s[tag=VSFlash] run function vidas5:events/lockout
execute if entity @s[tag=VSFlash] run function vidas5:events/flash

