execute if score gameactive gameinfo matches 0 if score gamestarted gameinfo matches 0 if score clear gameinfo matches 1 run function code:generate/generatestart
execute if score gamestarted gameinfo matches 2 run tag @a add alive
execute if score gamestarted gameinfo matches 2 run gamemode survival @a[tag=alive]
execute if score gamestarted gameinfo matches 2 run spreadplayers 1050 1050 3 130 under 80 false @a[tag=alive]
execute if score gamestarted gameinfo matches 2 run scoreboard players set gamestarted gameinfo 3
execute if score gameactive gameinfo matches 0 if score gamestarted gameinfo matches 0 if score clear gameinfo matches 0 run title @a actionbar {"text":"game loading"}
execute if score timer gameinfo matches 2000.. run summon wither 1050 100 1050
execute if score timer gameinfo matches 2000.. run effect give @a[tag=alive] glowing infinite 255
execute if score timer gameinfo matches 2000.. run scoreboard players set timer gameinfo 0
scoreboard players add timer gameinfo 1

execute store result score playersalive gameinfo if entity @a[tag=alive]

execute if score playersalive gameinfo matches ..1 if score gamestarted gameinfo matches 3 run scoreboard players add @a[tag=alive] wins 1
execute if score playersalive gameinfo matches ..1 if score gamestarted gameinfo matches 3 as @a[tag=alive] run say won
execute if score playersalive gameinfo matches ..1 if score gamestarted gameinfo matches 3 run function code:gamestart/reset