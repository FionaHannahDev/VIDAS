#Floor will set VSCTTP to 1. It will then add VSCTtest to it. This will mean that, when called, the minimum VSCTTP can be is Next Lowest Score + 1
scoreboard players set VIDAS.Config VSCTInit 1
scoreboard players operation VIDAS.Config VSCTInit += VIDAS.Config VSCTtest