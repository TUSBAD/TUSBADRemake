#> player:tick/trigger/sneak
#
#> スニーク時処理
#
#

#> スニーク頻度
execute if score @s SneakTime matches 1 run scoreboard players add @s SneakFrequency 10

#> スニーク状態取得
scoreboard players set _ _ 2
scoreboard players operation @s SneakTime *= _ _
scoreboard players set _ _ 4
scoreboard players operation @s SneakTime %= _ _