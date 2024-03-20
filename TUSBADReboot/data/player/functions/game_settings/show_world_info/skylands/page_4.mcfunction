#> player:game_settings/show_world_info/skylands/page_4
#
#> 通常世界詳細
#
#
tellraw @s "====================================================="
tellraw @s [{"translate":"[一覧に戻る]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初に戻る]","color":"#ff8040","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 210"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[前のページ]","color":"#ff8080","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 212"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#60ffff","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 214"}}]
tellraw @s [{"storage":"ad_remake:","nbt":"Prefix.TIPS"},{"text":"E","color":"gray","font":"icon"},{"text": "：未攻略"},{"translate":" / ","color": "white"},{"text":"E","font":"icon"},{"text": "：攻略済"}]
tellraw @s [{"translate":"[ 通常世界 ]","color":"#b7b7b7"},{"translate":" 4/5","color":"#FFFFFF"}]
tellraw @s ""
tellraw @s [{"translate":"神木島","color":"#ff5353"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"銭湯島","color":"#ff5353"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"エンダーチェスト島","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"エンチャントテーブル島","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"処刑塔","color":"#ff5353"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"魔女の館島","color":"#ff5353"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"廃病院島","color":"#ff5353"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"深淵島","color":"#ff5353"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"死島(なれんじ城)","color":"#ff5353"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"隔離所(れい城)","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"セキュリティーポール島","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]

tellraw @s ""
tellraw @s [{"translate":"攻略時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"$Hours","objective":"Count"}},{"score":{"name":"$Minutes","objective":"Count"}},[{"score":{"name":"$TenSeconds","objective":"Count"}},{"score":{"name":"$Seconds","objective":"Count"}}]]}]
tellraw @s "====================================================="