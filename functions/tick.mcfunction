execute store result score playercount gameinfo if entity @a
execute as @e[name="generate"] at @s run function code:raycast/start
clear @a obsidian
execute as @a[scores={leave=1..}] at @s run clear @s
execute as @a[scores={leave=1..}] at @s run kill @s
scoreboard players set @a leave 0

gamemode survival @a[tag=alive,tag=!debug]
gamemode spectator @a[tag=!alive,tag=!debug]

execute as @a[scores={death=1..}] run tag @s remove alive
execute as @a[scores={death=1..}] run clear @s
scoreboard players set @a death 0
spawnpoint @a 1050 100 1050
execute as @a at @s if block ~ ~ ~ water unless entity @e[type=boat,distance=..1.5] run damage @s 2 magic

execute if score playercount gameinfo matches 2.. run function code:gamestart/triggerstart
execute if score playercount gameinfo matches 1 run title @a actionbar {"text":"2 or more players required"}