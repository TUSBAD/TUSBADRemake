#> player:game_settings/show_world_info/all
#
#> ワールドデータ表示
#
#

tellraw @s "====================================================="

execute if data storage core: difficult{world:"picnic"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ピクニック","color":"#80ff00"}]
execute if data storage core: difficult{world:"casual"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"カジュアル","color":"#FF2A2A"}]
execute if data storage core: difficult{world:"another"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"アナザー","color":"#FF00FF"}]
execute if data storage core: difficult{world:"hardcore"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ハードコア","color":"#FF00FF"}]
execute if data storage core: difficult{world:"debug"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"デバッグ","color":"dark_gray"}]
tellraw @s ""

#>クリア数抽出
execute store result score _ Calc run function calc:island/clear_count
execute store result score # _ run function calc:island/get_total
execute store result score # Calc run function calc:island/clear_count_percent
tellraw @s [{"translate":"島 浄化率"}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}},"(",{"score":{"name": "#","objective": "Calc"}},"%)"]

#> 210-219: 通常世界下層
execute store result score _ Calc run data get storage area: purified.skylands
execute store result score # _ run function calc:island/get_total/skylands
tellraw @s [{"translate":"通常世界 下層","color":"#b7b7b7","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 210"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 220-229: 通常世界上層
execute store result score _ Calc run data get storage area: purified.rev_skylands
execute store result score # _ run function calc:island/get_total/rev_skylands
tellraw @s [{"translate":"通常世界 上層","color":"#ff3948","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 220"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 230-239: 交易島
execute store result score _ Calc run data get storage area: purified.tradeisland
execute store result score # _ run function calc:island/get_total/tradeisland
tellraw @s [{"translate":"交易島","color":"#70f158","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 230"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]


tellraw @s ""
tellraw @s [{"translate":"攻略時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"$Hours","objective":"Count"}},{"score":{"name":"$Minutes","objective":"Count"}},[{"score":{"name":"$TenSeconds","objective":"Count"}},{"score":{"name":"$Seconds","objective":"Count"}}]]}]

tellraw @s "====================================================="
#Todo [前のページ]/[次のページ]を追加して複数ページで攻略率を見れるようにする。