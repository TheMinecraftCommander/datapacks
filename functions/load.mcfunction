
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doDaylightCycle false
gamerule sendCommandFeedback false
gamerule commandBlockOutput false
gamerule doDaylightCycle false

forceload add 1000 1000 1200 1200
setworldspawn 950 100 950
spawnpoint @a 950 100 950
scoreboard players set timer gameinfo -1000
scoreboard objectives add death minecraft.custom:minecraft.deaths
scoreboard objectives add raycastx dummy
scoreboard objectives add raycasty dummy
scoreboard objectives add randomnoise dummy
clear @a
scoreboard objectives add wins dummy
scoreboard objectives setdisplay list wins
tag @a remove alive
scoreboard objectives add xnegrand dummy
scoreboard objectives add xposrand dummy
scoreboard objectives add ynegrand dummy
scoreboard objectives add yposrand dummy
scoreboard objectives add cultivation dummy
scoreboard objectives add gameinfo dummy
scoreboard players set gameactive gameinfo 0
scoreboard players set gamestarted gameinfo 0
scoreboard players set clear gameinfo 0
function code:generate/clear
scoreboard objectives add leave minecraft.custom:minecraft.leave_game

tellraw @a { "color": "#00FF00", "text": "Untitled Reload Message"}

