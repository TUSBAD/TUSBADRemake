#> calc:system_marker/return_schedule
#
# #marker返却（schedule実行）
#
#
#仮にschedule実行で返却する場合はこっちを使用、ただあまり使わないで欲しい(0-0-0-0-0のみ対象)
#一度も使われなかったら削除予定

execute unless entity @s in tusb_remake:test run tp 0-0-0-0-0 10005 5 10005