#> player:tick/mp/mp_regen_do
#
# #MPの自然回復処理
#
#

#MPCount / 1000 だけMPを回復させる。
scoreboard players set _ _ 1000
scoreboard players operation _ __ = @s MPCount
scoreboard players operation _ __ /= _ _
scoreboard players operation @s MP += _ __
scoreboard players operation @s MPCount %= _ _

#MPが満タンだったらMPCountを初期化する
execute if score @s MP >= @s MPMax run scoreboard players set @s MPCount 0
execute if score @s MP >= @s MPMax run scoreboard players operation @s MP = @s MPMax

execute if score _ _ matches 1 run function player:mp_bar/set