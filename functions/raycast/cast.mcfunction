scoreboard players add @s raycastx 1
scoreboard players add @s randomnoise 0
scoreboard players set @s[scores={randomnoise=0}] randomnoise 1

execute store result score @s randomnoise run random value 1..100

execute if score @s randomnoise matches 1 run setblock ~ ~ ~ red_concrete
execute if score @s randomnoise matches 2..100 run setblock ~ ~ ~ yellow_concrete



execute if score @s raycastx matches ..99 positioned ~ ~ ~1 run function code:raycast/cast
execute if score @s raycastx matches 100.. run scoreboard players add @s raycasty 1
execute if score @s raycastx matches 100.. run scoreboard players set @s raycastx 0
