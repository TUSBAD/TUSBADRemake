#> calc:island/clear_count_percent
#
#> %計算
#
#
#> クリア数抽出
function calc:island/clear_count
##係数定数
# _ _ 占有
scoreboard players set _ _ 101
##算出
scoreboard players operation _ Ret *= _ _
# _ _ 解放
scoreboard players operation _ Ret >< _ _
# _ _ 占有
execute store result score _ _ run function #calc:island/get_total
scoreboard players operation _ Ret >< _ _
return run scoreboard players operation _ Ret /= _ _