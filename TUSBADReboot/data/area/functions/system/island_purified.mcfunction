#> area:system/island_purified
#
#> 攻略判定と表示
#
#






#> クリア数抽出
execute store result score _ Calc run function calc:island/clear_count
execute store result score # _ run function #calc:island/get_total
execute store result score # Calc run function calc:island/clear_count_percent

#> クリアを通知
#> Todo:奈落がないような陸地エリアではエリア浄化率に表示を変えたい(雰囲気的に)
execute at @a run playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 0.25 1 0
title @a title [{"translate":"島 浄化率"}," ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}},"(",{"score":{"name": "#","objective": "Calc"}},"%)"]
tellraw @a [{"translate":"攻略時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"$Hours","objective":"Count"}},{"score":{"name":"$Minutes","objective":"Count"}},[{"score":{"name":"$TenSeconds","objective":"Count"}},{"score":{"name":"$Seconds","objective":"Count"}}]]}]