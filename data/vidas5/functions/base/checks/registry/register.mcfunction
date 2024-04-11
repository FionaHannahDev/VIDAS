# using indentation as an indicator of function, execute following

#Predicate already checked, spawn entity to raytrace with
#REMOVE that entities "VSSuccess"
#Execute as that entity:
#   
#   Execute as that entity the following function
#
#       1. IMPORTANT, CANCELED BECAUSE REPLACED BY ITTERATE ON FINAL CALL OF SELF: Moves raytrace entitiy 0.1 blocks in visual direction, starting at players eyes
#       2. Checks wether it is currently in crying obsidian
#       3. If it is, checks for circle components 
#       4. If successful, apply VSSuccess
#       5. Checks if scoreboard VSDistance of itself is 40 or greater (this is 4 blocks)
#       6. If it is, applies VSFailure
#       7. If VSSuccess, run function "Success"
#       8. If VSFailure OR VSSuccess, do NOT call self.
#       9. If Neither tag, add 1 to scoreboard self VSDistance, and calls self itterated by ^ ^ ^0.1.
#   
#   Then, kill the offending raytrace entitiy.

#Success will apply all necesary changes, as it will be executed EXACTLY from the location which has correct alignment 
#Failure will only apply if it has exceded its recursion limit

scoreboard players set @s VSCryObsidPlaced 0

execute as @s at @s positioned ~ ~1.8 ~ run function vidas5:base/checks/registry/tracersetup
execute as @e[tag=VSRaytrace] at @s run function vidas5:base/checks/registry/raytracemanager
