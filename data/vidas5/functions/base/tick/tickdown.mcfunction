#Function removes more based on how high it is compared to active timing points
#Cant be higher than lockout, or this wouldnt run
execute if score @s VStick > VIDAS.Config VSCTInit run scoreboard players remove @s VStick 1
execute if score @s VStick > VIDAS.Config VSCT1 unless score VIDAS.Config VSCT1 matches -1 run scoreboard players remove @s VStick 1
execute if score @s VStick > VIDAS.Config VSCT2 unless score VIDAS.Config VSCT2 matches -1 run scoreboard players remove @s VStick 1
execute if score @s VStick > VIDAS.Config VSCT3 unless score VIDAS.Config VSCT3 matches -1 run scoreboard players remove @s VStick 1
execute if score @s VStick > VIDAS.Config VSCT4 unless score VIDAS.Config VSCT4 matches -1 run scoreboard players remove @s VStick 1
execute if score @s VStick > VIDAS.Config VSCT5 unless score VIDAS.Config VSCT5 matches -1 run scoreboard players remove @s VStick 1
execute if score @s VStick > VIDAS.Config VSCT6 unless score VIDAS.Config VSCT6 matches -1 run scoreboard players remove @s VStick 1
execute if score @s VStick > VIDAS.Config VSCT7 unless score VIDAS.Config VSCT7 matches -1 run scoreboard players remove @s VStick 1
execute if score @s VStick > VIDAS.Config VSCT8 unless score VIDAS.Config VSCT8 matches -1 run scoreboard players remove @s VStick 1
execute if score @s VStick > VIDAS.Config VSCT9 unless score VIDAS.Config VSCT9 matches -1 run scoreboard players remove @s VStick 1
execute if score @s VStick > VIDAS.Config VSCT10 unless score VIDAS.Config VSCT10 matches -1 run scoreboard players remove @s VStick 1

#removes 1 regardless
scoreboard players remove @s VStick 1

#Also run init check
execute if score @s VStick = VIDAS.Config VSCTInit run function vidas5:events/init

#and if this totally depleted everything, set back to 0
execute if score @s VStick matches ..-1 run scoreboard players set @s VStick 0