execute if entity @s[name="generate",type=armor_stand,tag=generate,scores={cultivation=6..}] run function code:raycast/generate
execute if entity @s[type=armor_stand,name=generate] run data merge entity @s {NoGravity:1b}
execute if entity @s[type=armor_stand,name=generate,tag=!clear,tag=!generate] run function code:raycast/cast
execute if entity @s[type=armor_stand,name=generate,tag=clear,tag=!generate] run function code:raycast/castclear
execute if entity @s[type=armor_stand,name=generate,tag=!clear,tag=generate,scores={cultivation=0..5}] run function code:raycast/cultivate
execute as @s[type=armor_stand,scores={raycasty=..99}] at @s run tp @s ~1 ~ ~
execute as @s[type=armor_stand,scores={raycasty=100..},tag=!generate,tag=!clear] at @s run summon armor_stand 1000 72 1000 {NoGravity:1b,CustomName:'[{"text":"generate"}]',Tags:[generate]}
scoreboard players add @s cultivation 0
execute as @s[type=armor_stand,scores={raycasty=100..},tag=clear] run scoreboard players set clear gameinfo 1
execute as @s[type=armor_stand,scores={raycasty=100..},tag=!generate] at @s run kill @s
execute as @s[type=armor_stand,scores={raycasty=100..},tag=generate] run tp @s 1000 72 1000
execute as @s[type=armor_stand,scores={raycasty=100..},tag=generate] run scoreboard players add @s cultivation 1
execute as @s[type=armor_stand,scores={raycasty=100..},tag=generate] run scoreboard players set @s raycasty 0
execute as @s[type=armor_stand,scores={raycasty=100..}] run kill @s
execute as @s[type=armor_stand,scores={cultivation=7..}] run scoreboard players set gamestarted gameinfo 2
execute as @s[type=armor_stand,scores={cultivation=7..}] run scoreboard players set clear gameinfo 0
execute as @s[type=armor_stand,scores={cultivation=7..}] run kill @s