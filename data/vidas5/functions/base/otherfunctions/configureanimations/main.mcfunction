#Circle setup animation
function vidas5:base/otherfunctions/configureanimations/circlesetup/run

#If score is exactly 1, run end function, as next step is deletion
execute if score @s VSLocalCGFTick matches 1 run function vidas5:base/otherfunctions/configureanimations/circlesetup/end

#Tick down
#If has 1.. remove 1 from tick
execute if score @s VSLocalCGFTick matches 1.. run function vidas5:base/otherfunctions/configureanimations/tickdown