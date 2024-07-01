#> player:game_settings/show_world_info/all
#
#> ワールドデータ表示
#
#> 通常世界上/下・交易島・クラウディア・地下世界・ガリバー・テーブル・煉獄

tellraw @s "====================================================="

tellraw @s [{"translate":"[前のページ]","color":"#808080"},{"translate":" / ","color": "white"},{"translate":"[次のページ]","color":"#60ffff","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 201"}},{"translate":" / ","color": "white"},{"translate":"[最初のページ]","color":"#808080"}]

execute if data storage core: difficult{world:"picnic"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ピクニック","color":"#80ff00"}]
execute if data storage core: difficult{world:"casual"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"カジュアル","color":"#FF2A2A"}]
execute if data storage core: difficult{world:"another"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"アナザー","color":"#FF00FF"}]
execute if data storage core: difficult{world:"hardcore"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ハードコア","color":"#FF00FF"}]
execute if data storage core: difficult{world:"debug"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"デバッグ","color":"dark_gray"}]
tellraw @s ""
#>クリア数抽出
execute store result score _ Calc run function calc:island/clear_count
execute store result score # _ run function #calc:island/get_total
execute store result score # Calc run function calc:island/clear_count_percent
tellraw @s [{"translate":"全体浄化率"}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}},"(",{"score":{"name": "#","objective": "Calc"}},"%)"]
tellraw @s ""

#> 210-219: 通常世界下層
execute store result score _ Calc run data get storage area: capture.skylands
execute store result score # _ run function calc:island/get_total/skylands
tellraw @s [{"translate":"通常世界 下層","color":"#b7b7b7","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 210"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 220-229: 通常世界上層
execute store result score _ Calc run data get storage area: capture.rev_skylands
execute store result score # _ run function calc:island/get_total/rev_skylands
tellraw @s [{"translate":"通常世界 上層","color":"#ff3948","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 220"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 230-239: 交易島
execute store result score _ Calc run data get storage area: capture.tradeisland
execute store result score # _ run function calc:island/get_total/tradeisland
tellraw @s [{"translate":"交易島","color":"#70f158","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 230"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 240-249: クラウディア
execute store result score _ Calc run data get storage area: capture.cloudia
execute store result score # _ run function calc:island/get_total/cloudia
tellraw @s [{"translate":"クラウディア","color":"#23DDFA","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 240"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 250-259: 地下世界
execute store result score _ Calc run data get storage area: capture.underworld
execute store result score # _ run function calc:island/get_total/underworld
tellraw @s [{"translate":"地下世界","color":"#586bfe","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 250"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 260-269: ガリバーランド
execute store result score _ Calc run data get storage area: capture.gullivers_land
execute store result score # _ run function calc:island/get_total/gullivers_land
tellraw @s [{"translate":"ガリバーランド","color":"#ffd700","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 260"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 270-279: テーブル
execute store result score _ Calc run data get storage area: capture.table_mountain
execute store result score # _ run function calc:island/get_total/table_mountain
tellraw @s [{"translate":"テーブルマウンテン","color":"#31fb2d","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 270"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 280-289: 煉獄
execute store result score _ Calc run data get storage area: capture.purgatory
execute store result score # _ run function calc:island/get_total/purgatory
tellraw @s [{"translate":"煉 獄","color":"#f42f2f","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 280"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

tellraw @s ""
tellraw @s [{"storage":"ad_remake:","nbt":"Prefix.TIPS"},{"translate":"各ディメンション名を%1$sで詳細情報を確認できます。","bold": true,"with":[{"translate":"クリック","color":"#ff9e57","bold": true}]}]
tellraw @s ""
tellraw @s [{"translate":"攻略時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"$Hours","objective":"Count"}},{"score":{"name":"$Minutes","objective":"Count"}},[{"score":{"name":"$TenSeconds","objective":"Count"}},{"score":{"name":"$Seconds","objective":"Count"}}]]}]

tellraw @s "====================================================="