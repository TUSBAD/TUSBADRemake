#> player:game_settings/show_world_info/skylands/page_1
#
#> 通常世界詳細
#
#
tellraw @s "====================================================="
tellraw @s [{"translate":"[一覧に戻る]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初に戻る]","color":"#ff8040","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 210"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[前のページ]","color":"#808080","clickEvent":{"action": "run_command","value": ""}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#60ffff","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 211"}}]
tellraw @s [{"storage":"ad_remake:","nbt":"Prefix.TIPS"},{"text":"0","color":"gray","font":"ender_eye"},{"text": "：未攻略"},{"translate":" / ","color": "white"},{"text":"1","font":"ender_eye"},{"text": "：攻略済"}]
tellraw @s [{"translate":"[ 通常世界 ]","color":"#b7b7b7"},{"translate":" 1/5","color":"#FFFFFF"}]
execute store result score _ Calc run data get storage area: capture.skylands
execute store result score # _ run function calc:island/get_total/skylands
tellraw @s [{"translate":"エリア攻略数"}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]
tellraw @s ""
tellraw @s [{"translate":"ひまわり島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{01:0}.01","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{01:1}.01","font":"ender_eye"}]
tellraw @s [{"translate":"交易島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{02:0}.02","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{02:1}.02","font":"ender_eye"}]
tellraw @s [{"translate":"砂島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{03:0}.03","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{03:1}.03","font":"ender_eye"}]
tellraw @s [{"translate":"ガスト島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{04:0}.04","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{04:1}.04","font":"ender_eye"}]
tellraw @s [{"translate":"シミ島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{05:0}.05","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{05:1}.05","font":"ender_eye"}]
tellraw @s [{"translate":"脅威島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{06:0}.06","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{06:1}.06","font":"ender_eye"}]
tellraw @s [{"translate":"イカ島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{07:0}.07","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{07:1}.07","font":"ender_eye"}]
tellraw @s [{"translate":"舵島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{08:0}.08","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{08:1}.08","font":"ender_eye"}]
tellraw @s [{"translate":"灯台島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{09:0}.09","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{09:1}.09","font":"ender_eye"}]
tellraw @s [{"translate":"月島","color":"#ffffff"}," : ",{"storage":"area:","nbt":"capture.skylands{10:0}.10","font":"ender_eye","color":"gray"},{"storage":"area:","nbt":"capture.skylands{10:1}.10","font":"ender_eye"}]

tellraw @s ""
tellraw @s [{"translate":"攻略時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"$Hours","objective":"Count"}},{"score":{"name":"$Minutes","objective":"Count"}},[{"score":{"name":"$TenSeconds","objective":"Count"}},{"score":{"name":"$Seconds","objective":"Count"}}]]}]
tellraw @s "====================================================="