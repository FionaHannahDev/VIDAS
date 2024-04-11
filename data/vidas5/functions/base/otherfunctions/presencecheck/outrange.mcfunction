#Do fill with unlit candle
fill ~3 ~1 ~ ~3 ~1 ~ candle[candles=1,lit=false] replace
fill ~-3 ~1 ~ ~-3 ~1 ~ candle[candles=1,lit=false] replace
fill ~ ~1 ~3 ~ ~1 ~3 candle[candles=1,lit=false] replace
fill ~ ~1 ~-3 ~ ~1 ~-3 candle[candles=1,lit=false] replace

particle smoke ~ ~1.5 ~-3 0 0 0 0.05 5 force
particle smoke ~ ~1.5 ~3 0 0 0 0.05 5 force
particle smoke ~-3 ~1.5 ~ 0 0 0 0.05 5 force
particle smoke ~3 ~1.5 ~ 0 0 0 0.05 5 force

playsound block.fire.extinguish master @a[distance=..20]

#function vidas5:base/otherfunctions/configureanimations/circlesetup/end

tag @s remove VSNearby

