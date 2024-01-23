#> player:game_settings/show_world_info/all
#
#> ワールドデータ表示
#
#

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
execute store result score # _ run function calc:island/get_total
execute store result score # Calc run function calc:island/clear_count_percent
tellraw @s [{"translate":"島 浄化率"}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}},"(",{"score":{"name": "#","objective": "Calc"}},"%)"]

#> 瘴気の有無
tellraw @s "瘴気の有無の表示"

#> 死亡回数
tellraw @s [{"translate":"死亡回数"}," ： ",{"score":{"name": "@s","objective": "DeathCount"},"color":"#ff3333"}]

tellraw @s "後なんか一つ表示したい"


tellraw @s ""
tellraw @s [{"translate":"攻略時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"$Hours","objective":"Count"}},{"score":{"name":"$Minutes","objective":"Count"}},[{"score":{"name":"$TenSeconds","objective":"Count"}},{"score":{"name":"$Seconds","objective":"Count"}}]]}]

tellraw @s "====================================================="