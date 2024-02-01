#> player:game_settings/triggered
#
#> プレイヤーゲーム設定
#
#

#> 1 ステータス確認 (ジョブ・レベル・経験値・(スキル)・CP)
execute if score @s ChangeSettings matches 1 run function player:game_settings/show_status

#> 2 職業変更
#execute if score @s ChangeSettings matches 2 in area:test run function job:change/dialog

#> 200-399 ワールド情報
execute if score @s ChangeSettings matches 200..399 run function player:game_settings/show_world_info/

#> 設定画面再表示
function player:game_settings/reshow

#> トリガーリセット
scoreboard players reset @s ChangeSettings
scoreboard players enable @s ChangeSettings
