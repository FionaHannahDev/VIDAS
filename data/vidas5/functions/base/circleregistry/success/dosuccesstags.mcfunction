#add valid tag
tag @s add VSValidCirc

#spawn a marker with tag 
kill @e[type=marker,tag=VSCircle,distance=0..10]
summon marker ~ ~ ~ {Tags:["VSCircle"],CustomName:'{"text":"V.I.D.A.S Circle"}'}