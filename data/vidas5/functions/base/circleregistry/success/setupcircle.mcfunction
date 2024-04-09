playsound entity.experience_orb.pickup master @a[distance=0..10] ~ ~ ~ 0.5 0.4
playsound entity.experience_orb.pickup master @a[distance=0..10] ~ ~ ~ 0.5 0.6
playsound entity.experience_orb.pickup master @a[distance=0..10] ~ ~ ~ 0.5 0.8
playsound block.end_portal_frame.fill master @a[distance=0..10] ~ ~ ~ 1 1
playsound block.end_portal.spawn master @a[distance=0..10] ~ ~ ~ 1 1

#Set animation tick to 200 to give 10 seconds of animation to the portal
scoreboard players set @s VSLocalCGFTick 200
execute as @e[type=marker,tag=VSCircle,distance=0..10] at @s run function vidas5:base/otherfunctions/configureanimations/circlesetup/init