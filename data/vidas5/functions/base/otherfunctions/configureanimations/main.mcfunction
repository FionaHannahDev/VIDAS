#Circle setup animation
function vidas5:base/otherfunctions/configureanimations/circlesetup/run
function vidas5:base/otherfunctions/configureanimations/circledereg/run

#If score is exactly 1, run end function, as next step is deletion
execute if score @s[tag=VSAnimReg] VSLocalCGFTick matches 1 run function vidas5:base/otherfunctions/configureanimations/circlesetup/end
execute if score @s[tag=VSAnimDeReg] VSLocalCGFTick matches 1 run function vidas5:base/otherfunctions/configureanimations/circledereg/end

#Tick down
#If has 1.. remove 1 from tick
execute if score @s VSLocalCGFTick matches 1.. run function vidas5:base/otherfunctions/configureanimations/tickdown