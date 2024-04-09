#Do fill with lit candle
fill ~3 ~1 ~ ~3 ~1 ~ candle[candles=4,lit=true] replace
fill ~-3 ~1 ~ ~-3 ~1 ~ candle[candles=4,lit=true] replace
fill ~ ~1 ~3 ~ ~1 ~3 candle[candles=4,lit=true] replace
fill ~ ~1 ~-3 ~ ~1 ~-3 candle[candles=4,lit=true] replace

particle lava ~ ~1 ~-3 0 0 0 1 5 force
particle lava ~ ~1 ~3 0 0 0 1 5 force
particle lava ~-3 ~1 ~ 0 0 0 1 5 force
particle lava ~3 ~1 ~ 0 0 0 1 5 force

playsound item.firecharge.use master @a[distance=0..10,tag=!VSNearby]

tag @a[distance=0..10,tag=!VSNearby] add VSNearby

