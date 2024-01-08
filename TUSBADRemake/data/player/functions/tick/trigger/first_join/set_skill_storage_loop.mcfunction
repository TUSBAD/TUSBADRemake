#> player:tick/trigger/first_join/set_skill_storage_loop
#
# プレイヤーが覚えたスキルを確認するためのストレージを生成する（ループ処理）
#
#

# 小分けしたストレージにぶち込んでいくぜ～～
    data modify storage skill: _B append from storage skill: _A
    data modify storage skill: _B append from storage skill: _A
    data modify storage skill: _B append from storage skill: _A
    data modify storage skill: _B append from storage skill: _A
    data modify storage skill: _A set from storage skill: _B
    data remove storage skill: _B

# ループするかどうか
    scoreboard players add _ _ 1
    execute if score _ _ matches ..2 run function player:tick/trigger/first_join/set_skill_storage_loop