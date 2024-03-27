#Increase the tick by 1
scoreboard players add @s VStick 1

#Run tick event
function vidas5:events/tick

#Timings checks. If any of these match, run it
#these are self explanatory

execute if score @s VStick = VIDAS.Config VSCTInit run function vidas5:events/init

execute if score @s VStick = VIDAS.Config VSCT1 run function vidas5:events/count
execute if score @s VStick = VIDAS.Config VSCT2 run function vidas5:events/count
execute if score @s VStick = VIDAS.Config VSCT3 run function vidas5:events/count
execute if score @s VStick = VIDAS.Config VSCT4 run function vidas5:events/count
execute if score @s VStick = VIDAS.Config VSCT5 run function vidas5:events/count
execute if score @s VStick = VIDAS.Config VSCT6 run function vidas5:events/count
execute if score @s VStick = VIDAS.Config VSCT7 run function vidas5:events/count
execute if score @s VStick = VIDAS.Config VSCT8 run function vidas5:events/count
execute if score @s VStick = VIDAS.Config VSCT9 run function vidas5:events/count
execute if score @s VStick = VIDAS.Config VSCT10 run function vidas5:events/count

execute if score @s VStick = VIDAS.Config VSCTLockout run function vidas5:events/lockout
execute if score @s VStick = VIDAS.Config VSCTTP run function vidas5:events/tp

#TELEPORT ABSOLUTE OCCURS 5 TICKS AFTER EVENT TP FIRES
#This is configured in the same file as VSCTTP
execute if score @s VStick = VIDAS.Config VSCTPAbsolute run function vidas5:events/truetp
