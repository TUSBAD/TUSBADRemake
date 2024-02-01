#> player:luck_update
#
# 幸運属性によるMP補正
#
#

scoreboard players operation @s MPMax -= @s LUCK
scoreboard players operation @s MPMax += _ LUCK
scoreboard players operation @s MP < @s MPMax
scoreboard players operation @s LUCK = _ LUCK