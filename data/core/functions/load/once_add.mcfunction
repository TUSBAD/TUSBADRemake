#> core:load/once_add
#
# #load時に一回だけ実行される処理群（追加）
#
#
#AD二次創作にて追加する処理群はこっちに記入すること

#> forceload chunks
#一時的にデバッグエリアの10000,10000にマーカー群を配置する
#変更の余地あり
    execute in tusb_remake:test run forceload add 10001 10001
    execute in tusb_remake:test run setblock 10002 2 10002 shulker_box
    execute in tusb_remake:test positioned 10005 5 10005 run function calc:system_marker/tp_00000
    execute in tusb_remake:test positioned 10005 5 10005 run function calc:system_marker/tp_00001
    execute in tusb_remake:test positioned 10005 5 10005 run function calc:system_marker/tp_00002

#> トリガー
    scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick {"text": "人参棒クリック"}
    scoreboard objectives add SneakTime minecraft.custom:minecraft.sneak_time {"text":"スニーク時間"}

#> スキルデータ登録
    function player:skill/core/set_init