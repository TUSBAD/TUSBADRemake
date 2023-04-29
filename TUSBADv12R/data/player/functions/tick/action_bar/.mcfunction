#> player:tick/action_bar/
#
# #アクションバーの描画を行う
#
#
#アクションバーには以下の物を表示する（予定）
#1.HP
#2.反応ゲージ
#3.取得EXP
#4.状態異常メッセージ

# HPバーのFont配列の作成
function player:tick/action_bar/hp

# アクションバーの描画
title @s actionbar [{"nbt":"HP_Bar[]","storage":"tusb_remake:","separator":"","interpret":true}]

data remove storage tusb_remake: HP_Bar