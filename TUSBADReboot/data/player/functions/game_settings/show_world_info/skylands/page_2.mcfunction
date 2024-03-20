#> player:game_settings/show_world_info/skylands/page_2
#
#> 通常世界詳細
#
#
tellraw @s "====================================================="
tellraw @s [{"translate":"[一覧に戻る]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初に戻る]","color":"#ff8040","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 210"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[前のページ]","color":"#ff8080","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 210"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#60ffff","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 212"}}]
tellraw @s [{"storage":"ad_remake:","nbt":"Prefix.TIPS"},{"text":"E","color":"gray","font":"icon"},{"text": "：未攻略"},{"translate":" / ","color": "white"},{"text":"E","font":"icon"},{"text": "：攻略済"}]
tellraw @s [{"translate":"[ 通常世界 ]","color":"#b7b7b7"},{"translate":" 2/5","color":"#FFFFFF"}]
tellraw @s ""
tellraw @s [{"translate":"花火クリーパー島","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"墓場島","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"エメラルド島","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"遺跡島","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"オアシス島","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"スティーブ島","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"ハートを射抜く島(燃える愛の島)","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"かまど島","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"ずたぼろ亭","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"かぼちゃ島","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"五重の塔","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]

tellraw @s ""
tellraw @s [{"translate":"攻略時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"$Hours","objective":"Count"}},{"score":{"name":"$Minutes","objective":"Count"}},[{"score":{"name":"$TenSeconds","objective":"Count"}},{"score":{"name":"$Seconds","objective":"Count"}}]]}]
tellraw @s "====================================================="