scoreboard players add @s raycastx 1
scoreboard players add @s randomnoise 0


execute if score @s cultivation matches 0..4 if block ~ ~ ~ red_concrete if block ~ ~ ~1 orange_concrete store result score @s xposrand run random value 1..10
execute if score @s cultivation matches 0..4 if block ~ ~ ~ red_concrete if block ~ ~ ~-1 orange_concrete store result score @s xposrand run random value 1..10
execute if score @s cultivation matches 0..4 if block ~ ~ ~ red_concrete if block ~1 ~ ~ orange_concrete store result score @s xposrand run random value 1..10
execute if score @s cultivation matches 0..4 if block ~ ~ ~ red_concrete if block ~-1 ~ ~ orange_concrete store result score @s xposrand run random value 1..10

execute if score @s cultivation matches 0..4 if block ~ ~ ~ red_concrete if block ~ ~ ~1 orange_concrete if score @s xposrand matches 2.. run setblock ~ ~ ~1 red_concrete

execute if score @s cultivation matches 0..4 if block ~ ~ ~ red_concrete if block ~ ~ ~-1 orange_concrete if score @s xposrand matches 2.. run setblock ~ ~ ~-1 red_concrete

execute if score @s cultivation matches 0..4 if block ~ ~ ~ red_concrete if block ~-1 ~ ~ orange_concrete if score @s xposrand matches 2.. run setblock ~-1 ~ ~ red_concrete

execute if score @s cultivation matches 0..4 if block ~ ~ ~ red_concrete if block ~1 ~ ~ orange_concrete if score @s xposrand matches 2.. run setblock ~1 ~ ~ red_concrete

execute if score @s cultivation matches 0..4 if block ~ ~ ~ yellow_concrete if block ~ ~ ~1 orange_concrete store result score @s xposrand run random value 1..10
execute if score @s cultivation matches 0..4 if block ~ ~ ~ yellow_concrete if block ~ ~ ~-1 orange_concrete store result score @s xposrand run random value 1..10
execute if score @s cultivation matches 0..4 if block ~ ~ ~ yellow_concrete if block ~1 ~ ~ orange_concrete store result score @s xposrand run random value 1..10
execute if score @s cultivation matches 0..4 if block ~ ~ ~ yellow_concrete if block ~-1 ~ ~ orange_concrete store result score @s xposrand run random value 1..10

execute if score @s cultivation matches 0..4 if block ~ ~ ~ yellow_concrete if block ~ ~ ~1 orange_concrete if score @s xposrand matches 8.. run setblock ~ ~ ~1 yellow_concrete

execute if score @s cultivation matches 0..4 if block ~ ~ ~ yellow_concrete if block ~ ~ ~-1 orange_concrete if score @s xposrand matches 8.. run setblock ~ ~ ~-1 yellow_concrete

execute if score @s cultivation matches 0..4 if block ~ ~ ~ yellow_concrete if block ~-1 ~ ~ orange_concrete if score @s xposrand matches 8.. run setblock ~-1 ~ ~ yellow_concrete

execute if score @s cultivation matches 0..4 if block ~ ~ ~ yellow_concrete if block ~1 ~ ~ orange_concrete if score @s xposrand matches 8.. run setblock ~1 ~ ~ yellow_concrete



execute if block ~ ~ ~ red_concrete if block ~ ~ ~1 yellow_concrete store result score @s xposrand run random value 1..10
execute if block ~ ~ ~ red_concrete if block ~ ~ ~1 yellow_concrete if score @s xposrand matches 1.. run setblock ~ ~ ~1 orange_concrete

execute if block ~ ~ ~ red_concrete if block ~ ~ ~-1 yellow_concrete store result score @s xnegrand run random value 1..10
execute if block ~ ~ ~ red_concrete if block ~ ~ ~-1 yellow_concrete if score @s xnegrand matches 1.. run setblock ~ ~ ~-1 orange_concrete

execute if block ~ ~ ~ red_concrete if block ~-1 ~ ~ yellow_concrete store result score @s ynegrand run random value 1..10
execute if block ~ ~ ~ red_concrete if block ~-1 ~ ~ yellow_concrete if score @s ynegrand matches 1.. run setblock ~-1 ~ ~ orange_concrete

execute if block ~ ~ ~ red_concrete if block ~1 ~ ~ yellow_concrete store result score @s yposrand run random value 1..10
execute if block ~ ~ ~ red_concrete if block ~1 ~ ~ yellow_concrete if score @s yposrand matches 1.. run setblock ~1 ~ ~ orange_concrete


execute if block ~ ~ ~ orange_concrete if block ~ ~ ~1 red_concrete if block ~ ~ ~-1 red_concrete if block ~1 ~ ~ red_concrete if block ~-1 ~ ~ red_concrete run setblock ~ ~ ~ red_concrete
execute if score @s raycastx matches ..99 positioned ~ ~ ~1 run function code:raycast/cultivate
execute if score @s raycastx matches 100.. run scoreboard players add @s raycasty 1
execute if score @s raycastx matches 100.. run scoreboard players set @s raycastx 0
