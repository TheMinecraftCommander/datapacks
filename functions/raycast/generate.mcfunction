scoreboard players add @s raycastx 1
scoreboard players add @s randomnoise 0
scoreboard players set gamestarted gameinfo 1

execute store result score @s randomnoise run random value 1..15
execute if score @s randomnoise matches 1 if block ~ ~ ~ red_concrete if block ~ ~ ~1 red_concrete if block ~ ~ ~-1 red_concrete if block ~1 ~ ~ red_concrete if block ~-1 ~ ~ red_concrete run tag @s add chest
execute store result score @s randomnoise run random value 1..20
execute as @s[tag=chest] if score @s randomnoise matches 12..20 run setblock ~ ~6 ~ minecraft:chest{LootTable:"chests/village/village_weaponsmith"}
execute as @s[tag=chest] if score @s randomnoise matches 7..11 run setblock ~ ~6 ~ minecraft:chest{LootTable:"chests/stronghold_corridor"}
execute as @s[tag=chest] if score @s randomnoise matches 3..6 run setblock ~ ~6 ~ minecraft:chest{LootTable:"chests/nether_bridge"}
execute as @s[tag=chest] if score @s randomnoise matches 2 run setblock ~ ~6 ~ minecraft:chest{LootTable:"chests/end_city_treasure"}
execute as @s[tag=chest] if score @s randomnoise matches 1 run setblock ~ ~6 ~ minecraft:chest{LootTable:"chests/bastion_treasure"}
execute store result score @s randomnoise run random value 1..35
execute unless entity @s[tag=chest] if score @s randomnoise matches 1 if block ~ ~ ~ red_concrete if block ~ ~ ~1 red_concrete if block ~ ~ ~-1 red_concrete if block ~1 ~ ~ red_concrete if block ~-1 ~ ~ red_concrete run place feature minecraft:birch ~ ~6 ~
execute if block ~ ~ ~ red_concrete run setblock ~ ~5 ~ grass_block
execute if block ~ ~ ~ red_concrete run setblock ~ ~4 ~ dirt
execute if block ~ ~ ~ red_concrete run setblock ~ ~3 ~ dirt

execute if block ~ ~ ~ orange_concrete run setblock ~ ~4 ~ sand
execute if block ~ ~ ~ orange_concrete run setblock ~ ~3 ~ dirt
execute if block ~ ~ ~ yellow_concrete run setblock ~ ~3 ~ grass_block
execute if block ~ ~ ~ yellow_concrete run setblock ~ ~4 ~ water
execute run setblock ~ ~2 ~ bedrock

tag @s remove chest
execute if score @s raycastx matches ..99 positioned ~ ~ ~1 run function code:raycast/generate
execute if score @s raycastx matches 100.. run scoreboard players add @s raycasty 1
execute if score @s raycastx matches 100.. run scoreboard players set @s raycastx 0
