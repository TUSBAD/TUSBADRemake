#> player:game_settings/show_world_info/skylands/page_3
#
#> 通常世界詳細
#
#
tellraw @s "====================================================="
tellraw @s [{"translate":"[一覧に戻る]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初に戻る]","color":"#ff8040","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 210"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[前のページ]","color":"#ff8080","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 211"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#60ffff","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 213"}}]
tellraw @s [{"storage":"ad_remake:","nbt":"Prefix.TIPS"},{"text":"E","color":"gray","font":"icon"},{"text": "：未攻略"},{"translate":" / ","color": "white"},{"text":"E","font":"icon"},{"text": "：攻略済"}]
tellraw @s [{"translate":"[ 通常世界 ]","color":"#b7b7b7"},{"translate":" 3/5","color":"#FFFFFF"}]
tellraw @s ""
tellraw @s [{"translate":"蜘蛛島","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"本の神殿","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"逆さ家島","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"豪邸島","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"ケーキ島","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"たけのこ島","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"大釜とホッパー島","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"製図台島","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"海賊船","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"スケルトン's島","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]
tellraw @s [{"translate":"エンダー's島","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon"}]

tellraw @s ""
tellraw @s [{"translate":"攻略時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"$Hours","objective":"Count"}},{"score":{"name":"$Minutes","objective":"Count"}},[{"score":{"name":"$TenSeconds","objective":"Count"}},{"score":{"name":"$Seconds","objective":"Count"}}]]}]
tellraw @s "====================================================="