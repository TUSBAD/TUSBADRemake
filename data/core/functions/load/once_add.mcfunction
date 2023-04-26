#> core:load/once_add
#
# #load時に一回だけ実行される処理群（追加）
#
#
#AD二次創作にて追加する処理群はこっちに記入すること

### ADのverを設定
data modify storage tusb_remake: mapversion set value 1.0.0

### 各種Prefixを設定
data modify storage tusb_remake: Prefix.DEBUG set value "§3DEBUG >> §r"
data modify storage tusb_remake: Prefix.TIPS set value "§bTIPS >> §r"
data modify storage tusb_remake: Prefix.SUCCESS set value "§aSUCCESS >> §r"
data modify storage tusb_remake: Prefix.FAILED set value "§cFAILED >> §r"
data modify storage tusb_remake: Prefix.ERROR set value "§cERROR >> §r"
data modify storage tusb_remake: Prefix.CRIT set value "§4CRITICAL >> §r"
function tusb_remake:load/bad_effect_message

#> forceload chunks
#一時的にデバッグエリアの10000,10000にマーカー群を配置する
#変更の余地あり
    execute in tusb_remake:test run forceload add 10001 10001
    execute in tusb_remake:test run setblock 10002 2 10002 shulker_box
    execute in tusb_remake:test positioned 10005 5 10005 run function calc:system_marker/tp_00000
    execute in tusb_remake:test positioned 10005 5 10005 run function calc:system_marker/tp_00001
    execute in tusb_remake:test positioned 10005 5 10005 run function calc:system_marker/tp_00002

#> トリガー
### tusb_remake側と重複があるので完成後remake側を削除したほうがよさそう。
    scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick {"text": "人参棒クリック"}
    scoreboard objectives add SneakTime minecraft.custom:minecraft.sneak_time {"text":"スニーク時間"}

#> スキルデータ登録
    function player:skill/core/set_init