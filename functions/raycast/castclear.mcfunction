scoreboard players add @s raycastx 1

fill ~ ~-10 ~ ~ ~33 ~ air

execute if score @s raycastx matches ..99 positioned ~ ~ ~1 run function code:raycast/castclear
execute if score @s raycastx matches 100.. run scoreboard players add @s raycasty 1
execute if score @s raycastx matches 100.. run scoreboard players set @s raycastx 0