#> player:game_settings/show_world_info/tradeisland/
#
#> 交易島詳細
#
#
tellraw @s "====================================================="
tellraw @s [{"translate":"[一覧に戻る]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初に戻る]","color":"#ff8040","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 230"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[前のページ]","color":"#808080","clickEvent":{"action": "run_command","value": ""}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#808080","clickEvent":{"action": "run_command","value": ""}}]
tellraw @s [{"storage":"ad_remake:","nbt":"Prefix.TIPS"},{"text":"0","color":"gray","font":"ender_eye"},{"text": "：未攻略"},{"translate":" / ","color": "white"},{"text":"1","font":"ender_eye"},{"text": "：攻略済"}]
tellraw @s [{"translate":"[ 交 易 島 ]","color":"#70f158"}]
execute store result score _ Calc run data get storage area: capture.tradeisland
execute store result score # _ run function calc:island/get_total/tradeisland
tellraw @s [{"translate":"エリア浄化数"}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]
tellraw @s ""
tellraw @s [{"translate":"教会","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.tradeisland{001:0}.001","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.tradeisland{001:1}.001","font":"ender_eye"}]

tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s [{"translate":"攻略時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"$Hours","objective":"Count"}},{"score":{"name":"$Minutes","objective":"Count"}},[{"score":{"name":"$TenSeconds","objective":"Count"}},{"score":{"name":"$Seconds","objective":"Count"}}]]}]
tellraw @s "====================================================="