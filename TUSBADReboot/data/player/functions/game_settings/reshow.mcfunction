#> player:game_settings/reshow
#
#> プレイヤーゲーム設定再表示
#> 各項目間にスペース1つ分の空白を開けること
#> 適度に改行も入れてよい

tellraw @s ["",{"translate":"・ステータス","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ChangeSettings set 1"}}," ",{"translate":"・スキル","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ChangeSkill set 1"}}," ",{"translate":"・職業変更","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 2"}}," ",{"translate":"・ワールド情報","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 200"}}]

#> ChangeSettingsの値と設定
#  1: ステータス表示
#   : スキル
#  2: 職業変更
#
# 200-399: ワールド情報
# 210-: 各ディメンションの攻略率(予定)

function makeup:player/game_settings/reshow
