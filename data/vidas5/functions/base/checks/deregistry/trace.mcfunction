#       1. IMPORTANT, CANCELED BECAUSE REPLACED BY ITTERATE ON FINAL CALL OF SELF: Moves raytrace entitiy 0.1 blocks in visual direction, starting at players eyes
#       2. Checks wether it is currently air
#       3. If it is, checks for circle components 
#       4. If successful, apply VSSuccess
#       5. Checks if scoreboard VSDistance of itself is 40 or greater (this is 4 blocks), or if the block isnt air
#       6. If it is, applies VSFailure
#       7. If VSSuccess, run function "Success"
#       8. If VSFailure OR VSSuccess, do NOT call self.
#       9. If Neither tag, add 1 to scoreboard self VSDistance, and call self itterated by ^ ^ ^0.1.

execute if block ~ ~ ~ air run function vidas5:base/checks/deregistry/validatecircle

execute unless block ~ ~ ~ air run tag @s add VSFailure
execute if score @s VSDistance matches 40.. run tag @s add VSFailure
execute if entity @s[tag=VSSuccess] run function vidas5:base/checks/deregistry/success
execute if entity @s[tag=!VSSuccess] if entity @s[tag=!VSFailure] positioned ^ ^ ^0.1 run function vidas5:base/checks/deregistry/trace
scoreboard players add @s VSDistance 1